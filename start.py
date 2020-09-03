#!/usr/bin/python3
print("content-type: text/html")
print()

import subprocess
cal = subprocess.getoutput("sudo systemctl start docker")
print(cal)
