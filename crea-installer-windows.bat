@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo === Flop Launcher: creazione dell'installer ===
where node >nul 2>nul
if errorlevel 1 (
  echo Node.js non e' installato. Scaricalo da https://nodejs.org ^(versione LTS^), installalo e riprova.
  pause
  exit /b 1
)
call npm install
if errorlevel 1 goto errore
call npm run dist
if errorlevel 1 goto errore
echo.
echo Fatto! L'installer e' nella cartella "dist".
start "" "%~dp0dist"
pause
exit /b 0
:errore
echo.
echo Qualcosa e' andato storto. Copia il testo qui sopra e mandalo a Claude.
echo Se vedi un errore sui "symbolic link", attiva la Modalita sviluppatore di Windows e riprova.
pause
exit /b 1
