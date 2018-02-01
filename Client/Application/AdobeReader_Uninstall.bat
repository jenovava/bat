echo Adobe Reader10.
pushd \\pu******\sf****\DCS_WORK\suzu\Adobe_X
msiexec /x FontPack1000_ko_KR.msi /passive /norestart
msiexec /x install_flash_player_10_plugin.msi /passive /norestart
msiexec /x install_flash_player_10_active_x.msi /passive /norestart
msiexec /x {AC76BA86-7AD7-1041-7B44-AA0000000001} /passive /norestart
pause
exit
