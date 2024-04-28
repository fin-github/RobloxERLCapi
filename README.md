# Roblox ERLC API
A wrapper for the ER:LC API, using roblox studio...

This is as bad as it sounds, it uses the roblox HttpService to talk to the ER:LC API.

This has almost no features, but is easily scalable.

Current features:
- Send ER:LC Commands
- Send Base ER:LC Get Requests
- Send Base ER:LC Post Requests

## Setup
1. Put the `ERLCAPI.lua` inside of the ServerScript Service. Like this:
![image](https://github.com/fin-github/RobloxERLCapi/assets/70870542/8fe40c80-dce0-4771-9ee0-f819f0166009)
2. Open the `ERLCAPI.lua` file fill out this:
```lua
erlcapi.serverkey = "YOUR SERVER KEY"
```
3. Access it from any script with the following code:
```lua
local erlcapi = require(game:GetService("ServerScriptService"):WaitForChild("ERLCAPI"))
```

## Troubleshooting:
### HTTP Service Is Not Enabled
1. Open game settings (File -> Game Settings)
![image](https://github.com/fin-github/RobloxERLCapi/assets/70870542/0d28d679-053c-427f-a9b5-0746c546af25)
2. Open the *security* tab
![image](https://github.com/fin-github/RobloxERLCapi/assets/70870542/dd7df312-c57e-4902-8f49-e248296ce418)
3. Enable **Allow HTTP Requests**
![image](https://github.com/fin-github/RobloxERLCapi/assets/70870542/02978b5c-d384-4c1a-a42e-be1686e684fc)
### HTTP Too Many Requests
Wait a little bit. The ER:LC Ratelimit system is ratelimiting you.
