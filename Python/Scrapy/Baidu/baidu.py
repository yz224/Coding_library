import urllib as ulb
import urllib2 as ulb2

request = ulb2.Request("http://www.baidu.com")
response = ulb2.urlopen("http://www.baidu.com")
print response.read()


baidu = open("baidu.html", "w")
baidu.write(response.read())
baidu.close




