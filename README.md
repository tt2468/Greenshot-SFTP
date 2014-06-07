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

*open sftp://username:password@host.name -hostkey="ssh-rsa 2048 xx:xx:xx:xx:xx:xx:xx:xx"*

__IMPORTANT:__ Leave the "ssh-rsa" and "2048" part

Editing ftp.txt
===============

Editing ftp.txt is pretty simple, but I'll go through it one by one.

*option batch abort*
*option confirm off*

Leave these two as they are and don't modify them.

*open sftp://username:password@host.name -hostkey="ssh-rsa 2048 yo:ur:ho:st:ke:y:he:re"*

This is the main part you want to focus on. It's pretty self explanitory. Replace _username_ with your ssh username, _password_ with your ssh password, _host.name_ with your box ip/hostname. You want to replace _yo:ur:ho:st:ke:y:he:re_ with your host key, which is explained above.

*cd /var/www/i*

You want to change this to where you are uploading your screenshot. I have mine in a __i__ directory in */var/www*

*put %1%*

Leave this as it is.

*clip http://example.com/i/%1%*

This currently copies __http://example.com/i/yourscreenshotname__ to the clipboard for the batch file to then interpt, but modify it to your domain.

*close*

This closes the sFTP connection, and *exit* exits WinSCP.

Editing ftp.bat
===============

There's not alot to edit in ftp.bat, but there is a few things.

*cd /D C:/Program Files (x86)/WinSCP*

You want to change the *C:/Program Files* part to where your WinSCP is located.

*start /B WinSCP.com /script="C:/location/to/your/ftp.txt" /parameter // %1*

You want to change *"C:/location/to/your/ftp.txt"* to where your ftp.txt is located.

*echo http://example.com/image/%Name%.png | clip*

This is the important part. You want to change *http://example.com/image/%Name%.png* to where it has uploaded. 

Contact me
===============

That's pretty much it. If you have any problems or anything you can click on the EsperNet #Yoda button on http://yoda.pw/contactme.html
