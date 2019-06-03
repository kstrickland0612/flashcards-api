#!/bin/bash

curl "http://localhost:4741/cards" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "card": {
      "user_id": "'"${ID}"'",
      "category": "'"${CAT}"'",
      "front": "'"${FRONT}"'",
      "back": "'"${BACK}"'"
    }
  }'

echo
