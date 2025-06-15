@echo off
cd /d "%~dp0\.."
mongosh --port 27018 scripts\init-shard2.js
pause
