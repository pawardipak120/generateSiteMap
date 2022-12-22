FROM mcr.microsoft.com/dotnet/sdk:6.0
WORKDIR /App
COPY . .
RUN dotnet build SampleCLI.csproj
RUN ls
RUN pwd
RUN dotnet run
RUN ls -la bin/Debug/net6.0/
RUN cp -r bin/Debug/net6.0/* /
RUN ls -la /
RUN /App/bin/Debug/net6.0/SampleCLI --help
#ENTRYPOINT ["/App/bin/Debug/net6.0/SampleCLI", "--help"]
#CMD ["/App/bin/Debug/net6.0/SampleCLI", "--help"]
ENTRYPOINT ["/App/bin/Debug/net6.0/SampleCLI"]
CMD [ "--help" ]