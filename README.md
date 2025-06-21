# Mongo Sharding Colegio Cluster

Este proyecto implementa un clúster sharded de MongoDB en una sola máquina. Está compuesto por:

- 1 Config Server

- 3 Shards (cada uno como replica set)
- 1 Mongos Router
- Base de datos de ejemplo: `colegio`

## 📁 Estructura del proyecto


mongo-sharding-colegio-cluster/

├── mongo-cluster/ # Carpetas para datos de cada nodo (vacías en Git)
├── scripts/ # Scripts .js de configuración del clúster
├── colegio/ # Scripts y datos de la base de datos 'colegio'
├── run/ # Archivos .bat para iniciar servicios MongoDB
├── .gitignore # Reglas para ignorar archivos innecesarios
└── README.md # Este archivo


## 🛠 Requisitos

- MongoDB Community Server instalado
- Acceso a terminal (CMD o PowerShell)
- Sistema operativo Windows

## ▶ Pasos resumidos para levantar el clúster

1. Iniciar el **config server**:
   ```bash
   mongod --configsvr --replSet configReplSet --port 26050 --dbpath C:\mongo-cluster\config --bind_ip localhost


2. Iniciar los 3 shards (uno por uno con diferentes puertos y carpetas)(diferentes cmd):

[SHARD 1]

 mongod --shardsvr --replSet shard1ReplSet --port 27017 --dbpath C:\mongo-cluster\shard1 --bind_ip localhost

[SHARD 2]

 mongod --shardsvr --replSet shard2ReplSet --port 27018 --dbpath C:\mongo-cluster\shard2 --bind_ip localhost

 [SHARD 3]

 mongod --shardsvr --replSet shard3ReplSet --port 27019 --dbpath C:\mongo-cluster\shard3 --bind_ip localhost

3 . Iniciar el Mongos Router

 mongos --configdb configReplSet/localhost:26050 --port 26060 --bind_ip localhost

4. En diferentes CMD iniciar cada mongosh port

EJECUTABLES EN Script/   ojo solo se usa una vez 
**************************************************************************************************************

mongosh --port 26050
---> rs.initiate({ _id: 'configReplSet', configsvr: true, members: [{ _id: 0, host: 'localhost:26050' }] })

mongosh --port 27017
--->rs.initiate({ _id: 'shard1ReplSet', members: [{ _id: 0, host: 'localhost:27017' }] })

mongosh --port 27018
--->rs.initiate({ _id: 'shard2ReplSet', members: [{ _id: 0, host: 'localhost:27018' }] })

mongosh --port 27019
--->rs.initiate({ _id: 'shard3ReplSet', members: [{ _id: 0, host: 'localhost:27019' }] })

***************************************************************************************************************

mongosh --port 26060

---> sh.addShard('shard1ReplSet/localhost:27017')

---> sh.addShard('shard2ReplSet/localhost:27018')

---> sh.addShard('shard3ReplSet/localhost:27019')

5. 

// 1. Seleccionar la base de datos

use colegio

// 2. Habilitar el sharding

sh.enableSharding("colegio")

// 3. Crear la colección (si aún no existe)

db.createCollection("example")

// 4. Definir el campo shard key (por cede)

sh.shardCollection("colegio.estudiantes", { cede: 1 })

// 5. Asignar las zonas (opcional pero recomendable si defines zonas en los shards)

sh.updateZoneKeyRange(
  "colegio.example",
  { cede: "centro" },
  { cede: "centro~" },
  "centro"
)

sh.updateZoneKeyRange(
  "colegio.example",
  { cede: "norte" },
  { cede: "norte~" },
  "norte"
)

sh.updateZoneKeyRange(
  "colegio.example",
  { cede: "sur" },
  { cede: "sur~" },
  "sur"
)


--------------------------------------------------------------------------------

DESPUES DE LA PRIMERA EJECUCION E INSTALACION 

ES NECESARIO ABRIR TODOS LOS INIT .BAT Y SOLO EJECUTAR EL MONGOSH DEL PUERTO 26060

🔒 Seguridad: Todos los procesos de MongoDB están ligados a `localhost`, por lo que ninguna IP pública ni de red local es visible ni accesible desde el exterior. Esta configuración es segura para entornos de desarrollo en tu máquina personal.
