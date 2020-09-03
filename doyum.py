file = open("/etc/yum.repos.d/docker.repo","w")
L = ["name=docker \n","baseurl=https://download.docker.com/linux/centos/7/x86_64/stable/\n","gpgcheck=0\n"]
file.write("[docker] \n")
file.writelines(L)
file.close()

