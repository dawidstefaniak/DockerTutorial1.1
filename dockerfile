# Select the image which we will be used to create our new image
FROM microsoft/dotnet:2.1.300-sdk-stretch

# Change directory to /app which will be directory containing our app
WORKDIR /app

# Copy solution and csproj file to /app folder to restore packages needed to run our application
COPY *.csproj .
RUN dotnet restore

# copy everything else and build the app
COPY . .
RUN dotnet build

# Change Working Directory to debug folder
WORKDIR ./bin/Debug/netcoreapp2.1/

# Set starting point of the application to DockerTutorial1.1.dll
ENTRYPOINT ["dotnet", "DockerTutorial1.1.dll"]