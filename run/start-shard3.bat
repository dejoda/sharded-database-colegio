@echo off
mongod --shardsvr --replSet shard3ReplSet --port 27019 --dbpath C:\mongo-cluster\shard3 --bind_ip localhost
pause
