[![babatunday](https://circleci.com/gh/babatunday/ml_microservicesproject.svg?style=svg)](https://app.circleci.com/pipelines/github/babatunday/ml_microservicesproject)

**Project Overview**
Project Summary A Scikit-Learn-based Machine Learning Microservice is part of the Operationalize ML project. It includes a model that forecasts Boston home values based on a number of characteristics, including the typical number of rooms in a home and information on highway accessibility, teacher-to-student ratios, and other factors. The project's objective is to use kubernetes, an open-source technology for automating the management of containerized applications, to operationalize this functional machine learning microservice.

What does this project do?
Run a docker container
Upload container into a public registry (hub.docker.com)
Run the deployed application in a Kubernetes cluster
Integrate with CircleCI for continuous integration

Requirements

A.1. Python 3.7
Download and install the python.

A.2. Docker Desktop
You would require you to install Docker Desktop to create containers for individual microservices. Refer the following links for instructions

macOS,
Windows 10 64-bit: Pro, Enterprise, or Education,
Windows 10 64-bit Home.
You can find installation instructions for other operating systems at: https://docs.docker.com/install/

A.3. Kubernetes
You would need to install any one tool for creating a Kubernetes cluster - KubeOne / Minikube / kubectl on top of Docker Desktop:

Install and Set Up kubectl directly on top of Docker desktop - For Windows/macOS
Install Minikube - For Linux/macOS

A.4. AWS account to access AWS Lambda
You'll need an AWS account to get started with AWS Lambda, which is a serverless computing platform on cloud.

A.5. An account with Circle CI
You may sign up on CircleCI.com with your GitHub credentials.

START HERE

Step 0
Fork this repo and clone it to your local workstation

Step 1: Install dependencies
Create virtual Enviroment by running script below:

python3 -m venv ~/.devops
source ~/.devops/bin/activate

This will create a virtual environment in your home directory called .devops
Install dependencies by running: make install

(Optionally) Lint application (requires hadolint)

Step 2: Run Docker container
Run the application on docker by calling ./run_docker.sh

Step 3: Upload to Docker Hub
In the ./upload_docker.sh file, edit the dockerpath (line 8) and change the docker username to a personalized one (or leave it as is, to use the public babatunday/microservicesproject:v1)

To upload to docker hub, run ./upload_docker.sh

Remember to port forward the application to 8000:80

Make prediction by running: ./make_prediction.sh

Step 4: Kubernetes deployment
To deploy to kubernetes, run ./run_kubernetes.sh
