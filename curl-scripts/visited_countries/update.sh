
curl "http://localhost:4741/visited_countries/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "visited_country": {
      "country": "'"${COUNTRY}"'",
      "year": "'"${YEAR}"'"
    }
  }'
