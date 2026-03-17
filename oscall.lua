local oscall = {};

function oscall.get_os()
local osname
  -- ask LuaJIT first
  if jit then return jit.os end

  -- Unix, Linux variants
  local file_handle, err = assert(io.popen("uname -o 2>/dev/null", "r"))
  if err ~= nil then
      print("Failed to get file handler" + err)
  end

  if file_handle then
      osname = file_handle:read()
  end

  return osname or "Windows"
end

return oscall
