@echo off
cd /d "%~dp0\.."
mongosh --port 26050 scripts\init-config.js
pause
