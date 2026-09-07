@echo off
setlocal
copy /b chunk00.txt+chunk01.txt+chunk02.txt+chunk03.txt+chunk04.txt+chunk05.txt+chunk06.txt+chunk07.txt+chunk08.txt+chunk09.txt SAKA_v023_base64.txt >nul
certutil -decode SAKA_v023_base64.txt SAKA_WATER_MODEL_BUILDER_v0.2.3_UI_RUNTIME_DIAGNOSTICS.zip >nul
if errorlevel 1 (
  echo ERROR: Could not rebuild ZIP.
  pause
  exit /b 1
)
echo Created: SAKA_WATER_MODEL_BUILDER_v0.2.3_UI_RUNTIME_DIAGNOSTICS.zip
pause
