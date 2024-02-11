#!/bin/bash

# MongoDB connection details
MONGO_HOST="127.0.0.1"
MONGO_PORT="27017"
DB_NAME="test"
COLLECTION_NAME="random_number"

# # Loop to insert numbers 1 to 100
# for ((i=1; i<=100; i++)); do
#     # Insert document into MongoDB
#     mongosh mongodb://root:example@$MONGO_HOST:$MONGO_PORT/  --password=example --eval "db.$COLLECTION_NAME.insertOne({ number: $i })"
    
#     # Check for errors in MongoDB insertion
#     if [ $? -ne 0 ]; then
#         echo "Error inserting number $i into MongoDB."
#         exit 1
#     fi
# done

# Generate an array of documents from 1 to 100
docs=()
for ((i=1; i<=100; i++)); do
    docs+=("{ number: $i }")
done

# Join array elements with a comma to form a valid JSON array
json_array=$(IFS=,; echo "[${docs[*]}]")


# Insert the array of documents into MongoDB using insertMany
mongosh mongodb://root:example@$MONGO_HOST:$MONGO_PORT/  --password=example --eval "db.$COLLECTION_NAME.insertMany($json_array)"

# Check for errors in MongoDB insertion
if [ $? -ne 0 ]; then
    echo "Error inserting documents into MongoDB."
    exit 1
fi

echo "Numbers 1 to 100 inserted into MongoDB successfully."

# mongosh mongodb://root:example@127.0.0.1:27017/ --password=example