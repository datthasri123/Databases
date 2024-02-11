#!/usr/bin/sh
mongosh mongodb://root:example@127.0.0.1:27017/ --password=example <<EOF 
use test

db.random_number.insertOne({number: 2}) 
db.random_number.insertOne({number: 3}) 
db.random_number.insertOne({number: 4}) 
db.random_number.insertOne({number: 5}) 
db.random_number.insertOne({number: 6}) 
db.random_number.insertOne({number: 7}) 
db.random_number.insertOne({number: 8}) 
db.random_number.insertOne({number: 9})

db.random_number.find({}).limit(10)

exit
 
EOF