
curl "http://localhost:4741/bucketlist_countries/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "bucketlist_country": {
      "name": "'"${NAME}"'",
      "rank": "'"${RANK}"'",
      "user_id": "'"${USERID}"'"
    }
  }'
