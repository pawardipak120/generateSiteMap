FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-env
WORKDIR /App
COPY . .
RUN dotnet build SampleCLI.csproj
RUN dotnet run
RUN cp -r /App/bin/Debug/net6.0/* /

# Build runtime image
FROM mcr.microsoft.com/dotnet/aspnet:6.0
WORKDIR /App
COPY --from=build-env /App/bin/Debug/net6.0/* /App/
ENTRYPOINT ["./SampleCLI", "--help"]

