################################################################################################
#!/bin/sh 
########################### start ec2 #######################################################
su -m root -c "pw groupadd sudo" 
su -m root -c "pw usermod ec2-user -G wheel,sudo,ssh,ec2-user"
su -m root -c 'echo "%sudo ALL= ( ALL:ALL ) NOPASSWD: ALL" >> /usr/local/etc/sudoers'
fetch -q --no-verify-peer https://raw.githubusercontent.com/Adiel-Ribeiro/Wordpress/master/fstab
su -m root -c "mv fstab /etc"
su -m root -c "chmod 600 /etc/fstab"
rm start.sh
su -m root -c "reboot" 
##############################################################################################
