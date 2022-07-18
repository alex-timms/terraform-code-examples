# To Create and Push Docker Image to ECR

### Log in to AWS ECR and docker using aws credentials
- AWS_ACCESS_KEY and AWS_SECURE_ACCESS_KEY should have already been used in the command line

`aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin 806271594805.dkr.ecr.eu-west-1.amazonaws.com`

### Build docker image from dockerfile
- have image name the same as the target repository already created within AWS

`docker build -t test-ecr -f dockerfile .` 

### Tag docker image to a unique version number
- Also tag as latest to maje ut clear

`docker tag test-ecr:latest 806271594805.dkr.ecr.eu-west-1.amazonaws.com/test-ecr:0.0.2`

### Push image to ecr
- Specify which version you are trying to push by changing the text after ':'

`docker push 806271594805.dkr.ecr.eu-west-1.amazonaws.com/test-ecr:0.0.2`

