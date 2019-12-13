
curl "http://localhost:4741/bucketlist_countries/${ID}" \
  --include \
  --header "Authorization: Token token=${TOKEN}" \
  --request DELETE

echo
