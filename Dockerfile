# https://hub.docker.com/_/microsoft-dotnet
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /source

RUN dotnet version
RUN pwd
RUN ls
ENTRYPOINT [ "ls" ]