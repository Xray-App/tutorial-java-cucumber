# submit from the command line
BASE_URL=https://xray.cloud.getxray.app
token=$(curl -H "Content-Type: application/json" -X POST --data @"cloud_auth.json" "$BASE_URL/api/v1/authenticate"| tr -d '"')
curl -H "Content-Type: application/json" -X POST -H "Authorization: Bearer $token"  --data @"report.json" "$BASE_URL/api/v1/import/execution/cucumber"

