rs.initiate({
  _id: 'shard2ReplSet',
  members: [
    { _id: 0, host: 'localhost:27018' }
  ]
})
