-- THIS IS A MODULE SCRIPT

local erlcapi = {}

-- !!! ADD YOUR SERVER KEY HERE !!! --
erlcapi.serverkey = "YOUR SERVER KEY"
-- !!! ADD YOUR SERVER KEY HERE !!! --


local HttpService = game:GetService("HttpService")
print("HTTP Service Loaded")

-- Constants
erlcapi.baseERLClink = "https://api.policeroleplay.community/v1/" -- ends with "/"

print("Defined Constants")


-- Functions

function erlcapi.base_get_request(part) 
	local headers = {}
	headers["Server-Key"] = erlcapi.serverkey

	return HttpService:GetAsync(
		erlcapi.baseERLClink .. part,
		true,
		headers
	)
end

function erlcapi.base_post_request(part, data) 
	local headers = {}
	headers["Server-Key"] = erlcapi.serverkey
	

	return HttpService:PostAsync(
		erlcapi.baseERLClink .. part,
		data,
		Enum.HttpContentType.ApplicationJson,
		false,
		headers
	)
end

function erlcapi.send_m_command()
	erlcapi.base_post_request(
		'server/command',
		'{"command":":m This is from another roblox game!"}'
	)
end

return erlcapi
