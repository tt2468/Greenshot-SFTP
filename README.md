Greenshot-SFTP
==============

A SFTP Script for Greenshot

Setup
=========

Download both ftp.bat & ftp.txt and modify to your needs, place them in the same folder. 

Right click on greenshot and press on Configure External Commands
![Image](http://i.yoda.li/i/001092.png) 

Click "New" and call it.. say "SFTP"

![Image](http://i.yoda.li/i/001093.png)

For the "Command", you want to navigate to your .bat file that you downloaded, not your .txt file.

For the "Argument", you want to set it to: "{0}" [With the quotes!]

In the end, it should look something like

![Image](http://i.yoda.li/i/001094.png)

Hit "OK", and you're all done, if the "Command" box is red ( !http://i.yoda.li/i/001095.png ) that means the filepath is invalid.

To now enable this, you want to right click on your greenshot icon and hit on Preferences, then go to the "Destination" tab and untick "Select destination dynamically" and tick "SFTP" or whatever you called it.

Getting your host key
=====================

To get your host key, you want to run __ssh-keygen -l -f /etc/ssh/ssh_host_rsa_key.pub__

It should output _something_ like __2048 xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx  root@XXXXXX (RSA)__

You want to copy the xx:xx:xx:xx part and paste it in your ftp.txt, just like this;
