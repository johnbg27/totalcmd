; truecrypt / dropbox delayed startup script
#Persistent
SetTimer, checkDrive, 5000
return

checkDrive:
DriveGet, status, Status, X:\
if (status = "Ready") 
{
  dropboxDir = X:\Eigene Dateien\Dropbox
  Run "C:\Dokumente und Einstellungen\Jekyll\Anwendungsdaten\Dropbox\bin\Dropbox.exe" /home
  Run "C:\Programme\AutoHotkey\AutoHotkey.exe"
  Run %dropboxDir%\Tools\AHK\scripts\bin\StartClock.exe  
  Run %dropboxDir%\Tools\KeePass\KeePass.exe 
  ; mount dropbox tc image?!
  ; add notify?
  ExitApp
}
return


