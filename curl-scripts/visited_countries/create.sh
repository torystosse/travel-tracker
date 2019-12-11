
curl "http://localhost:4741/visited_countries" \
  --include \
  --request POST \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "visited_country": {
      "country": "'"${COUNTRY}"'",
      "year": "'"${YEAR}"'"
    }
  }'

  echo
