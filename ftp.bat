@echo off

set mypath=%1

For %%A in ("%mypath%") do (
Set Name=%%~nA
)

cd /D C:/Program Files (x86)/WinSCP
start /B WinSCP.com /script="C:\Change\Me\To\Your\ftp.txt" /parameter // %1

echo https://example.com/i/%Name%.png | clip
