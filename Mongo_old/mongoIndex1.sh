#!/bin/bash

echo $PYTHONPATH

export PYTHONPATH=$PYTHONPATH:/home/siva/PycharmProjects/pythonMongoProject/venv/lib/python3.10/site-packages

# python3 /home/siva/PycharmProjects/pythonMongoProject/CreateIndex.py \
#  --connection_string 'mongodb://root:example@127.0.0.1:27017/admin?retryWrites=true&w=majority' \
#  --database_name random_number \
#  --collection_name banks_n_balance \
#  --index_key ' BankAccount PASSPORT_Number country Institute Name Balance_date'\
#  --index_Name index3

#  python3 /home/siva/PycharmProjects/pythonMongoProject/CreateIndex.py \
#  --connection_string 'mongodb://root:example@127.0.0.1:27017/admin?retryWrites=true&w=majority' \
#  --database_name random_number \
#  --collection_name banks_n_balance \
#  --index_key 'country' \
#  --index_Name index4

  python3 /home/siva/PycharmProjects/pythonMongoProject/CreateIndex.py \
 --connection_string 'mongodb://root:example@127.0.0.1:27017/admin?retryWrites=true&w=majority' \
 --database_name random_number \
 --collection_name banks_n_balance \
 --index_key 'BankAccount' \
 --index_Name index5