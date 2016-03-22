import urllib as ulb
import urllib2 as ulb2



values = {"username" : "ruczyk", "password" : "bjay2008"}
url = "https://passport.csdn.net/account/login?from=http://my.csdn.net/my/mycsdn"
user_agent = "Chrome/48.0.2564.116 Safari/537.36"
data = ulb.urlencode(values)
headers = {'User-Agent' : user_agent}

request = ulb2.Request(url, data, headers)
response = ulb2.urlopen(request)
print response.read()

CSDN = open("CSDN.html", "w")
CSDN.write(response.read())
CSDN.close
