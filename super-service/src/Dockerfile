FROM mcr.microsoft.com/dotnet/sdk:3.1 AS build
WORKDIR /build
COPY SuperService.csproj .
RUN dotnet restore
COPY . .
RUN dotnet publish --no-restore -c release -o /package


FROM mcr.microsoft.com/dotnet/aspnet:3.1
WORKDIR /app
COPY --from=build /package ./
ENTRYPOINT [ "dotnet", "SuperService.dll" ]

