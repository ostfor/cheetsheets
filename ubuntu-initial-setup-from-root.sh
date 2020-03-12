apt-get install sudo 
adduser $1
su $1
usermod -aG sudo $1
su $1
