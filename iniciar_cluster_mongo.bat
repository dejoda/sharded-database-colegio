@echo off
title Iniciando clúster sharded MongoDB

echo === Iniciando Config Server ===
start "" /min cmd /c "mongod --configsvr --replSet configReplSet --port 26050 --dbpath C:\mongo-cluster\config --bind_ip localhost"
timeout /t 2 > nul

echo === Iniciando Shard 1 ===
start "" /min cmd /c "mongod --shardsvr --replSet shard1ReplSet --port 27017 --dbpath C:\mongo-cluster\shard1 --bind_ip localhost"
timeout /t 2 > nul

echo === Iniciando Shard 2 ===
start "" /min cmd /c "mongod --shardsvr --replSet shard2ReplSet --port 27018 --dbpath C:\mongo-cluster\shard2 --bind_ip localhost"
timeout /t 2 > nul

echo === Iniciando Shard 3 ===
start "" /min cmd /c "mongod --shardsvr --replSet shard3ReplSet --port 27019 --dbpath C:\mongo-cluster\shard3 --bind_ip localhost"
timeout /t 2 > nul

echo === Iniciando Mongos Router ===
start "" /min cmd /c "mongos --configdb configReplSet/localhost:26050 --port 26060 --bind_ip localhost"
timeout /t 3 > nul

echo === Conectando a Mongos ===
start "" cmd /k mongosh --port 26060
