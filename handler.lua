local BasePlugin = require "kong.plugins.base_plugin"
local responses = require "kong.tools.responses"

local HeaderCheckerHandler = BasePlugin:extend()

HeaderCheckerHandler.PRIORITY = 1000
HeaderCheckerHandler.VERSION = "0.1.0"

function HeaderCheckerHandler:new()
  HeaderCheckerHandler.super.new(self, "header-checker")
end

function HeaderCheckerHandler:access(conf)
  HeaderCheckerHandler.super.access(self)
  local req_headers = kong.request.get_headers()
  local req_header_to_check = req_headers[conf.header_to_check]

  allowed = false
  for i = 1, table.maxn(conf.allowed_header_values) do
    if string.match(conf.allowed_header_values[i], req_header_to_check) then
      allowed = true
    end
  end
  if not allowed then
    return responses.send_HTTP_FORBIDDEN()
  end
end

return HeaderCheckerHandler