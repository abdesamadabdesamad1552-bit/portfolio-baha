@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo Starting local server on http://localhost:5180 ...
start "" cmd /c "npx --yes serve -l 5180 ."
timeout /t 3 /nobreak >nul
start "" "http://localhost:5180/menu.html"
