#!/bin/bash

terraform apply -auto-approve
terraform output -json | jq 'with_entries(.value |= .value)' > ../lambda/aws-resources.json
