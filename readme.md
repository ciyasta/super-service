# Solution
Below is the explanation/implementation of problems.

## 1. Automated Deployment
Deploy.ps1 is created in root directory which has command for all three requirements. 
1. We have to run ```dotnet test``` command to initiate the automated test.
2. Created [Dockerfile](./super-service/src/Dockerfile) and [.dockerignore](./super-service/src/.dockerignore) folder then ```docker build``` for buliding the docker image.
3. ```docker run``` to run the image locally.

Helm charts can be created to automate the deployment process to kubernetes cluster.

## 2. Infrastructure
Using Microsoft as our cloud provider, we can create a virtual network with both private and public subnet. We would then create Azure Kubernetes Service in private subnet and create Azure Application Gateway in public subnet to expose our API application to internet. The new VNet mentioned above can be connected to "internal-assets" via peering. Traffic between the peering can be secured by defining/assigning appropriate Network Security Groups. Monitoring or service liveness can be tracked by Azure Monitor and alerts can sent. Automated deployment can be done by using helm charts to kubernetes cluster.