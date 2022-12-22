# https://hub.docker.com/_/microsoft-dotnet
# FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-env
# WORKDIR /App

# # Copy everything
# COPY . ./
# # Restore as distinct layers
# #RUN dotnet restore
# # Build and publish a release
# RUN dotnet publish -c Release -o out

# Build runtime image
FROM mcr.microsoft.com/dotnet/sdk:6.0
WORKDIR /App
COPY . .
RUN dotnet build SampleCLI.csproj
RUN ls
RUN pwd
# COPY --from=build-env /App/out .
# ENTRYPOINT ["ls"]
RUN dotnet run
RUN ls -la bin/Debug/net6.0/
RUN ./bin/Debug/net6.0/SampleCLI --help
ENTRYPOINT ["./App/bin/Debug/net6.0/SampleCLI --help"]