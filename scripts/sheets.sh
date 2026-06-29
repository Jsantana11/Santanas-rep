#!/usr/bin/env bash
# Google Sheets read/write wrapper
# Usage:
#   sheets.sh append TRADE-LOG "2026-06-30" "AAPL" "buy" "8.00" "195.50" "175.95" "AI momentum" "220" "2.5"
#   sheets.sh append RESEARCH-LOG "2026-06-30" "Summary text" "Trade ideas text"
#   sheets.sh read TRADE-LOG
#   sheets.sh read RESEARCH-LOG

set -euo pipefail

SHEET_ID="${GOOGLE_SHEETS_ID:-}"
CLIENT_EMAIL="${GOOGLE_CLIENT_EMAIL:-}"
PRIVATE_KEY="${GOOGLE_PRIVATE_KEY:-}"

if [[ -z "$SHEET_ID" || -z "$CLIENT_EMAIL" || -z "$PRIVATE_KEY" ]]; then
  echo "Google Sheets credentials not set in environment" >&2
  exit 3
fi

ACTION="${1:-}"
SHEET_NAME="${2:-}"

# Generate JWT for Google OAuth
generate_jwt() {
  local header
  local payload
  local now
  local exp

  now=$(date +%s)
  exp=$((now + 3600))

  header=$(echo -n '{"alg":"RS256","typ":"JWT"}' | python3 -c "import sys,base64; print(base64.urlsafe_b64encode(sys.stdin.read().encode()).rstrip(b'=').decode())")
  payload=$(python3 -c "
import sys, base64, json
payload = {
  'iss': '${CLIENT_EMAIL}',
  'scope': 'https://www.googleapis.com/auth/spreadsheets',
  'aud': 'https://oauth2.googleapis.com/token',
  'exp': ${exp},
  'iat': ${now}
}
print(base64.urlsafe_b64encode(json.dumps(payload).encode()).rstrip(b'=').decode())
")

  local unsigned="${header}.${payload}"
  local private_key
  private_key=$(echo -e "${PRIVATE_KEY}")

  local signature
  signature=$(echo -n "$unsigned" | openssl dgst -sha256 -sign <(echo "$private_key") | python3 -c "import sys,base64; print(base64.urlsafe_b64encode(sys.stdin.buffer.read()).rstrip(b'=').decode())")

  echo "${unsigned}.${signature}"
}

get_access_token() {
  local jwt
  jwt=$(generate_jwt)

  curl -s -X POST "https://oauth2.googleapis.com/token" \
    -H "Content-Type: application/x-www-form-urlencoded" \
    -d "grant_type=urn:ietf:params:oauth:grant-type:jwt-bearer&assertion=${jwt}" \
    | python3 -c "import sys,json; print(json.load(sys.stdin)['access_token'])"
}

TOKEN=$(get_access_token)

if [[ "$ACTION" == "append" ]]; then
  shift 2
  VALUES=$(python3 -c "
import sys, json
args = sys.argv[1:]
print(json.dumps({'values': [args]}))
" "$@")

  curl -s -X POST \
    "https://sheets.googleapis.com/v4/spreadsheets/${SHEET_ID}/values/${SHEET_NAME}:append?valueInputOption=RAW&insertDataOption=INSERT_ROWS" \
    -H "Authorization: Bearer ${TOKEN}" \
    -H "Content-Type: application/json" \
    -d "$VALUES" > /dev/null

  echo "Appended to ${SHEET_NAME}"

elif [[ "$ACTION" == "read" ]]; then
  curl -s \
    "https://sheets.googleapis.com/v4/spreadsheets/${SHEET_ID}/values/${SHEET_NAME}" \
    -H "Authorization: Bearer ${TOKEN}" \
    | python3 -c "
import sys, json
data = json.load(sys.stdin)
rows = data.get('values', [])
for row in rows:
    print('\t'.join(row))
"
fi
