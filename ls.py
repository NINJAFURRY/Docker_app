#!/usr/bin/python3
print("content-type: text/html")
print()

print("<pre>")
import subprocess
cal = subprocess.getoutput("ls")
print(cal)

new = subprocess.getoutput("sudo touch /etc/yum.repos.d/docker.repo")
print(new)

print()
cool = subprocess.getoutput("sudo python3 /var/www/cgi-bin/doyum.py")
print(cool)

yy = subprocess.getoutput("sudo yum repolist all")
print(yy)

install = subprocess.getoutput("sudo yum install docker-ce -y")
print(install)

print("</pre>")
