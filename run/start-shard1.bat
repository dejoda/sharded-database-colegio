@echo off
mongod --shardsvr --replSet shard1ReplSet --port 27017 --dbpath C:\mongo-cluster\shard1 --bind_ip localhost
pause
