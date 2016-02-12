#!/bin/sh
set -e

echo "
{
  \"capabilities\": [
    {
      \"browserName\": \"${BROWSER_NAME}\",
      \"maxInstances\": 1,
	  \"version\": \"${BROWSER_VERSION}\",
      \"seleniumProtocol\": \"WebDriver\"
    },
    {
      \"browserName\": \"*${BROWSER_NAME}\",
      \"maxInstances\": 1,
	  \"version\": \"${BROWSER_VERSION}\",
      \"seleniumProtocol\": \"Selenium\"
    }
  ],
  \"configuration\": {
    \"proxy\": \"org.openqa.grid.selenium.proxy.DefaultRemoteProxy\",
    \"maxSession\": 1,
    \"port\": 5555,
    \"register\": true,
    \"registerCycle\": 5000
  }
}" 



