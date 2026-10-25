@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo === Flop Launcher: prova ===
where node >nul 2>nul
if errorlevel 1 (
  echo Node.js non e' installato. Scaricalo da https://nodejs.org ^(versione LTS^), installalo e riprova.
  pause
  exit /b 1
)
call npm install
if errorlevel 1 goto errore
call npm start
exit /b 0
:errore
echo.
echo Qualcosa e' andato storto. Copia il testo qui sopra e mandalo a Claude.
pause
exit /b 1
