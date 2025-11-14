getgenv().decompile = function(script_instance)
  local request = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request;
  local base64Encode = base64_encode or crypt and crypt.base64.encode
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
