rs.initiate({
  _id: 'shard1ReplSet',
  members: [
    { _id: 0, host: 'localhost:27017' }
  ]
})
