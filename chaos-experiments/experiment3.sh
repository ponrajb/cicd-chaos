########################################
# Experiment #3 - Latency example
#

GREMLIN_TEAM_ID=$1
GREMLIN_API_KEY=$2
CIRCLE_USERNAME=$3


curl -i -X POST "https://api.gremlin.com/v1/attacks/new?teamId=${GREMLIN_TEAM_ID}" -H 'Content-Type: application/json;charset=utf-8' -H 'Authorization: Bearer Yy0zODZkNjNhMS1kMGI1LTU2ODYtYTdkZi1hMjA2OTRiYTBlNmI6Y29tbXVuaXR5K2NpcmNsZUBncmVtbGluLmNvbToxYzA5MWZhYS04NTdlLTQzMzEtODkxZi1hYTg1N2UzMzMxOGQ=' -d '{"target":{"type":"Random","containers":{"multiSelectLabels":{"app":["'"$CIRCLE_USERNAME-cicd-chaos-app"'"]}},"percent":100},"command":{"type":"latency","commandType":"Latency","args":["-l","300","-m","500","-h","^api.gremlin.com","-p","^53"],"providers":[]}}'
