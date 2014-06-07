Greenshot-SFTP
==============

A SFTP Script for Greenshot

Setup
=========

Download both ftp.bat & ftp.txt and modify to your needs, place them in the same folder. 

Right click on greenshot and press on Configure External Commands
!http://i.yoda.li/i/001092.png 

Click "New" and call it.. say "SFTP"

!http://i.yoda.li/i/001093.png 

For the "Command", you want to navigate to your .bat file that you downloaded, not your .txt file.

For the "Argument", you want to set it to: "{0}" [With the quotes!]

In the end, it should look something like

!http://i.yoda.li/i/001094.png 

Hit "OK", and you're all done, if the "Command" box is red ( !http://i.yoda.li/i/001095.png ) that means the filepath is invalid.

To now enable this, you want to right click on your greenshot icon and hit on Preferences, then go to the "Destination" tab and untick "Select destination dynamically" and tick "SFTP" or whatever you called it.
