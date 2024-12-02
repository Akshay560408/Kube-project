# Kubernetes Web Application Deployment for atc

## Prerequisites:
AWS account having terraform cli , kubernetes CLI installed.

## Steps to Deploy:

# 1. Provision Cloud Infrastructure with Terraform:
Run the following commands to provision resources on AWS:
terraform init
terraform apply

# 2. Build the docker image:
docker build web-app-atc .

# 3. Deploy the web application & monitoring:
kubectl apply -f Web-app-atc-deploy.yaml
kubeclt apply -f Web-app-atc-service.yaml
kubectl apply -f prometheus-deploy.yaml
kubectl apply -f prom-service.yaml
kubectl apply -f prom-config.yaml

# 4. In the end , use kubectl pods and  kubectl services to check your deployment.

In last , use the external IP address to access the web application deployed.
