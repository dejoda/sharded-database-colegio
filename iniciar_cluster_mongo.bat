@echo off
title Iniciando clúster sharded MongoDB

echo === Iniciando Config Server ===
start "CONFIG SERVER" cmd /k mongod --configsvr --replSet configReplSet --port 26050 --dbpath C:\mongo-cluster\config --bind_ip localhost

echo === Iniciando Shard 1 ===
start "SHARD 1" cmd /k mongod --shardsvr --replSet shard1ReplSet --port 27017 --dbpath C:\mongo-cluster\shard1 --bind_ip localhost

echo === Iniciando Shard 2 ===
start "SHARD 2" cmd /k mongod --shardsvr --replSet shard2ReplSet --port 27018 --dbpath C:\mongo-cluster\shard2 --bind_ip localhost

echo === Iniciando Shard 3 ===
start "SHARD 3" cmd /k mongod --shardsvr --replSet shard3ReplSet --port 27019 --dbpath C:\mongo-cluster\shard3 --bind_ip localhost

echo === Iniciando Mongos Router ===
start "MONGOS" cmd /k mongos --configdb configReplSet/localhost:26050 --port 26060 --bind_ip localhost

timeout /t 5 > nul
echo === Conectando a Mongos ===
start "MONGOSH" cmd /k mongosh --port 26060
