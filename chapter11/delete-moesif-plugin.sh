 curl --location --request GET 'http://localhost:8001/plugins' | jq '.data[] | select(.name == "moesif") | .id'  | xargs -I {} curl -v -X DELETE --url http://localhost:8001/plugins/{};