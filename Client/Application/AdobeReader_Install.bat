echo Adobe Reader10.
taskkill /fi "imagename eq iexplore.exe"
taskkill /fi "imagename eq acrord32.exe"
pushd \\pu24sf10\sf10dn\DCS_WORK\suzu\Adobe_X
AdbeRdr1001_ja_JP.exe /sAll /rs
msiexec /i FontPack1000_ko_KR.msi /passive /norestart
msiexec /i install_flash_player_10_plugin.msi /passive /norestart
msiexec /i install_flash_player_10_active_x.msi /passive /norestart
exit
