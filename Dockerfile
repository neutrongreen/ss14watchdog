FROM mcr.microsoft.com/dotnet/sdk:9.0
WORKDIR /build

RUN git clone --recursive https://github.com/space-wizards/SS14.Watchdog
WORKDIR /build/SS14.Watchdog

RUN dotnet publish -c Release -r linux-x64 --no-self-contained -o /watchdog
WORKDIR /watchdog

COPY start_watchdog.sh /run

#COPY /build/SS14.Watchdog/bin/Release/net8.0/linux-x64/publish /app
#WORKDIR /app

ENTRYPOINT [ "/run/start_watchdog.sh" ]
