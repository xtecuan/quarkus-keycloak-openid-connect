#/bin/bash

export access_token=$(curl --insecure -X POST https://localhost:8443/realms/quarkus/protocol/openid-connect/token --user backend-service:secret -H 'content-type: application/x-www-form-urlencoded' -d 'username=alice&password=alice&grant_type=password' | jq --raw-output '.access_token')
