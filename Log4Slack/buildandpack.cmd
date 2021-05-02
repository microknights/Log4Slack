@echo off
set version=1.2.0
set projectname=MicroKnights.Log4Slack.csproj

dotnet clean -c Release %projectname%
dotnet build -c Release %projectname%
dotnet pack -c Release --no-build -o r:\nuget --version-suffix %version% %projectname%
