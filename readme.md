# Solution
Below is the explanation/implementation of problems.

## 1. Automated Deployment
Deploy.ps1 is created in root directory which has command for all three requirements. 
1. We have to run ```dotnet test``` command to initiate the automated test.
2. Created [Dockerfile](./super-service/src/Dockerfile) and [.dockerignore](./super-service/src/.dockerignore) folder then ```docker build``` for buliding the docker image.
3. ```docker run``` to run the image locally.
