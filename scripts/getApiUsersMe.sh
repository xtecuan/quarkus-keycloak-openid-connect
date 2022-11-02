#!/bin/bash

curl -v -X GET \
  http://localhost:8080/api/users/me \
  -H "Authorization: Bearer "$access_token
