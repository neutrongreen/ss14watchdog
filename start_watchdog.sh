#!/bin/sh
#copy releveant config file text from envromiment variable to appsettings.yml
echo $WATCHDOG_CONFIG > /watchdog/appsettings.yml

#run watchdog exe
/watchdog/SS14.Watchdog