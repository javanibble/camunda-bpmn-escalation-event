#!/bin/bash

curl --location --request POST 'http://localhost:8080/engine-rest/process-definition/key/escalation-event-process-1/start' --header 'Content-Type: application/json' --data-raw '{
     "businessKey": "process-key-123"
}'