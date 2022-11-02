#!/bin/bash

curl -v -X GET \
   http://localhost:8080/api/admin \
   -H "Authorization: Bearer "$access_token
