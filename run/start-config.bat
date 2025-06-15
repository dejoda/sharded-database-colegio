@echo off
mongod --configsvr --replSet configReplSet --port 26050 --dbpath C:\mongo-cluster\config --bind_ip localhost
pause
