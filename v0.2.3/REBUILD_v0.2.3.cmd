@echo off
setlocal
cd /d "%~dp0"

copy /b package\chunk00.txt+package\chunk01.txt+package\chunk02.txt+package\chunk03.txt+package\chunk04.txt+package\chunk05.txt+package\chunk06.txt+package\chunk07.txt+package\chunk08.txt+package\chunk09.txt v023_base64.txt >nul
if errorlevel 1 goto :fail

powershell -NoProfile -ExecutionPolicy Bypass -Command "$b=[IO.File]::ReadAllText('v023_base64.txt'); [IO.File]::WriteAllBytes('SAKA_WATER_MODEL_BUILDER_v0.2.3_UI_RUNTIME_DIAGNOSTICS.zip',[Convert]::FromBase64String($b))"
if errorlevel 1 goto :fail

del v023_base64.txt >nul 2>&1
echo.
echo Created: SAKA_WATER_MODEL_BUILDER_v0.2.3_UI_RUNTIME_DIAGNOSTICS.zip
echo.
pause
exit /b 0

:fail
echo.
echo REBUILD FAILED
echo.
pause
exit /b 1
