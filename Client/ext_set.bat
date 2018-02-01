@echo off
assoc .tif=
ftype TIFImage.Document=
assoc .tif=TIFImage.Document
ftype TIFImage.Document=rundll32.exe C:\WINDOWS\system32\shimgvw.dll,ImageView_Fullscreen %%1

echo 処理が完了しました。
pause
