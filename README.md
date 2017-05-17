# Powershell
To run unsigned scripts that you write on your local computer and signed    scripts from other users, use the following command to change the execution    policy on the computer to RemoteSigned:
set-executionpolicy remotesigned
Once this has been saved, you need to add it to the Recovery options Run a program section. Put the path to powershell.exe in the first box. The default location is (even for version 2!)

 1
c:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
In the second “parameters” box tell it to run the script above e.g.

 1
-command C:\script\email.ps1
