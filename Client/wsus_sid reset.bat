:: WindowsUpdate停止
net stop wuauserv

:: SIDキーを削除
echo y|reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate" /v PingID
echo y|reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate" /v AccountDomainSid
echo y|reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate" /v SusClientId

:: WindowsUpdate開始
net start wuauserv

:: SIDキーの再作成
wuauclt.exe /resetauthorization /detectnow
