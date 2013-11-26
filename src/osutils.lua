local osutils = {}

function osutils:get_os()
  local o = package.config:sub(1, 1)

  if o == "\\" then
    return "windows"
  elseif o == "/" then
    return "unix"
  else
    error("Unable to determine os.")
  end
end

return osutils
