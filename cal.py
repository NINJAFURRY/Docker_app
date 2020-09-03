#!/usr/bin/python3
print("content-type: text/html")
print()

import subprocess
import cgi
#newdata = cgi.FieldStorage()
#new = newdata.getvalue("b") 
cal = subprocess.getoutput("sudo ls")
print(cal)
