@echo off

set path=%1

For %%A in ("%path%") do (
Set Name=%%~nA
)

cd /D C:/Program Files (x86)/WinSCP
start /B WinSCP.com /script="C:/location/to/your/ftp.txt" /parameter // %1

cd /D C:\windows\system32\
echo http://example.com/image/%Name%.png | clip
