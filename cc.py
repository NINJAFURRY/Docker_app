#!/usr/bin/python3
print("content-type: text/html")
print()

import subprocess
import cgi
newdata = cgi.FieldStorage()
new = newdata.getvalue("a")
image = cgi.FieldStorage()
ima = image.getvalue("b") 
cal = subprocess.getoutput(f'sudo docker run -dit --name {new} --image {image} ')
print(cal)
