@echo off
setlocal

rem for /f "skip=4 tokens=1,2*" %%R in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Lotus\Notes\6.0" /v "Path"') do set STOREROOT=%%~T
rem echo %STOREROOT:REG_EXPAND_SZ =%

echo *****

for /f "tokens=1,2*" %%R in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Lotus\Notes\6.0" /v "Path"') do set LotusPath=%%~T
echo %LotusPath%
for /f "tokens=1,2*" %%R in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Lotus\Notes\6.0" /v "DataPath"') do set LotusDataPath=%%~T
echo %LotusDataPath%

echo 終了コード: %ERRORLEVEL%

IF ERRORLEVEL 0 GOTO OK
GOTO NG
:NG
echo Code.?
GOTO END
:OK
echo Code.0
GOTO END
:END


pause
