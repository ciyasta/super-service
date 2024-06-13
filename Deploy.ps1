# Running the test
dotnet test .\super-service\test\

# docker build
docker build .\super-service\src\ -t super-service:v1

# docker run
docker run --rm -p 8080:80  super-service:v1