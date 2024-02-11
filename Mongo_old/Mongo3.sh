#!/bin/bash

echo $PYTHONPATH

# python3 /home/siva/PycharmProjects/pythonMongoProject/dropDatabase.py \
#  --connection_string 'mongodb://root:example@127.0.0.1:27017/admin?retryWrites=true&w=majority' \
#  --database_name random_number

export PYTHONPATH=$PYTHONPATH:/home/siva/PycharmProjects/pythonMongoProject/venv/lib/python3.10/site-packages




# python3 /home/siva/PycharmProjects/pythonMongoProject/insertRandomBankaccounts.py \
#  --connection_string 'mongodb://root:example@127.0.0.1:27017/admin?retryWrites=true&w=majority' \
#  --database_name random_number \
#  --collection_name banks_n_balance \
#  --num_of_entries 50000 \
#  --batch_count 100



python3 /home/siva/PycharmProjects/pythonMongoProject/insertRandomBankaccountsMultiple.py \
 --connection_string 'mongodb://root:example@127.0.0.1:27017/admin?retryWrites=true&w=majority' \
 --database_name random_number \
 --collection_name banks_n_balance \
 --num_of_entries 10000 \
 --batch_count 500

