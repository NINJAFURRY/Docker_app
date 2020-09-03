#!/usr/bin/python3
print("content-type: text/html")
print()

import subprocess
cal = subprocess.getoutput("sudo docker network ls")
print(cal)
