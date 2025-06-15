@echo off
cd /d "%~dp0\.."
mongosh --port 27019 scripts\init-shard3.js
pause
