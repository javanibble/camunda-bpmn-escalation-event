#!/bin/bash

echo Escalation Event Process 1: Complete User Task 1
IP=$(curl --location --fail --silent --request POST 'http://localhost:8080/engine-rest/task' --header 'Content-Type: application/json' --data-raw '{ "processInstanceBusinessKey": "process-key-123", "taskDefinitionKey": "user-task-1"}' | jq -r '.[0].id')

curl --location --fail --silent --request POST "http://localhost:8080/engine-rest/task/$IP/complete" --header 'Content-Type: application/json'

