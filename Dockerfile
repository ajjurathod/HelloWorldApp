# Use .NET 6 SDK image for both build and runtime
FROM mcr.microsoft.com/dotnet/sdk:6.0

# Set working directory
WORKDIR /app

# Copy everything into the container
COPY . ./

# Restore dependencies and build the app
RUN dotnet restore
RUN dotnet publish -c Release -o out

# Set the working directory to the published output
WORKDIR /app/out

# Expose port 80
EXPOSE 80

# Run the application
ENTRYPOINT ["dotnet", "HelloWorldApp.dll"]
