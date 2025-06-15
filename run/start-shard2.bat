@echo off
mongod --shardsvr --replSet shard2ReplSet --port 27018 --dbpath C:\mongo-cluster\shard2 --bind_ip localhost
pause
