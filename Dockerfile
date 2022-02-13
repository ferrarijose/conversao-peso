FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /app

COPY ConversaoPeso.sln .
COPY ConversaoPeso.Web/ConversaoPeso.Web.csproj ./ConversaoPeso.Web/ConversaoPeso.Web.csproj
RUN dotnet restore

COPY ConversaoPeso.Web/. ./ConversaoPeso.Web/
WORKDIR /app/ConversaoPeso.Web
RUN dotnet publish -c release -o /app/bin/ConversaoPeso.Web --no-restore

FROM mcr.microsoft.com/dotnet/aspnet:5.0
WORKDIR /app
COPY --from=build /app/bin/ConversaoPeso.Web ./
ENTRYPOINT ["dotnet", "ConversaoPeso.Web.dll" ]
