# Mage CI

This is an template repository for a CI pipeline for [Mage](https://github.com/mage-ai/mage-ai).
This repository builds a custom docker image of mage containing your mage project, publishes it to ECR, and deploys/updates the relevant ECS resources in AWS.

# Setup
To setup your project, clone this repository and follow [these instructions](https://docs.mage.ai/production/ci-cd/local-cloud/repository-setup) to setup your mage project. Create a new Github repo and ensure the following variables/secrets are configured.

|Variable|Type|Description|
|:-:|:-:|:-:|
|AWS_DEFAULT_REGION|Env|The region that resources should be deployed to.|
|AWS_ACCESS_KEY_ID|Secret|The access key used to authenticate with AWS.|
|AWS_SECRET_ACCESS_KEY|Secret|The secret access key to authenticate with AWS.|
|TF_VAR_pb_aws_access_key_id|Secret|The same as AWS_ACCESS_KEY_ID.|
|TF_VAR_pb_aws_secret_access_key|Secret|The same as AWS_SECRET_ACCESS_KEY.|
|TV_VAR_pb_aws_region|Env|The same as AWS_DEFAULT_REGION|
|TF_VAR_pb_reponame|Env|The name for the ECR repository.|
