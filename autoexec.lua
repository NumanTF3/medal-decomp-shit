getgenv().decompile = function(script_instance)
  local bytecode = getscriptbytecode(script_instance)
  local encoded = crypt.base64encode(bytecode)
  return request(
    {
      Url = "https://147.185.221.31:58163/luau/decompile",
      Method = "POST",
      Body = encoded
    }
  ).Body
end
