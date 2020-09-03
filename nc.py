#!/usr/bin/python3
print("content-type: text/html")
print()

import subprocess
import cgi
newdata = cgi.FieldStorage()
new = newdata.getvalue("d")
cal = subprocess.getoutput(f'sudo docker network create {new} ')
print(cal)
