@echo off
mongos --configdb configReplSet/localhost:26050 --port 26060 --bind_ip localhost
pause
