--install cjson
--install socket.http
local json = require("cjson")
hc = require('httpclient').new()
--set your own accessKey
postData = json.encode({accessKey="4Ky6AV4hE0pWLeG1bXNw", data={phone="18687082306"}})
res = hc:post('http://finance-api.fengkongcloud.com/v2/finance/labels',postData)
print(res["body"])
