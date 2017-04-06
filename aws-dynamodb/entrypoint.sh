#! /bin/bash
java -Djava.library.path=/var/dynamodb/DynamoDBLocal_lib/ -jar /var/dynamodb/DynamoDBLocal.jar -dbPath /home/user/dynamodb
