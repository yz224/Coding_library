import urllib as ulb
import urllib2 as ulb2

request = ulb2.Request("http://www.raventech.com/about")
response = ulb2.urlopen("http://www.raventech.com/about")

raventech = open("raventech.html", "w")
raventech.write(response.read())
raventech.close




