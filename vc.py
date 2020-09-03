#!/usr/bin/python3
print("content-type: text/html")
print()

import subprocess
import cgi
newdata = cgi.FieldStorage()
new = newdata.getvalue("a")
cal = subprocess.getoutput(f'sudo docker volume create {new} ')
print(cal)
