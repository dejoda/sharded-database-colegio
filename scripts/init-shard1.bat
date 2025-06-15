@echo off
cd /d "%~dp0\.."
mongosh --port 27017 scripts\init-shard1.js
pause
