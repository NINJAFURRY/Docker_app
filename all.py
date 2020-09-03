#!/usr/bin/python3
import cgi
import subprocess
print("Content-type: text/html")
print()

mydata = cgi.FieldStorage()
myx = mydata.getvalue("x")
#cmd = subprocess.getoutput("sudo "  + myx)
#print(cmd)

print()

newdata = cgi.FieldStorage()
myy = newdata.getvalue("y")
#new = subprocess.getoutput("sudo "  + myy)
#print(new)

ll = cgi.FieldStorage()
nn = ll.getvalue("z")

print()

h = subprocess.getoutput(f'sudo  {myx}  {myy}  {nn}')
print(h)
