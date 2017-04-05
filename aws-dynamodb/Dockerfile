# Copyright 2017 Jonathan Spooner
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM eclipse/debian_jdk8_node

WORKDIR /home/user
RUN sudo mkdir /var/dynamodb

# install DynamoDB to /var/dynamodb
RUN curl -O https://s3-us-west-2.amazonaws.com/dynamodb-local/dynamodb_local_latest.tar.gz \
  && curl -O https://s3-us-west-2.amazonaws.com/dynamodb-local/dynamodb_local_latest.tar.gz.sha256 \
  && sha256sum -c dynamodb_local_latest.tar.gz.sha256 \
  && sudo tar -xzf dynamodb_local_latest.tar.gz -C /var/dynamodb \
  && rm dynamodb_local_latest.tar.gz \
  && rm dynamodb_local_latest.tar.gz.sha256

ENTRYPOINT ["java", "-Djava.library.path=/var/dynamodb/DynamoDBLocal_lib/", "-jar", "/var/dynamodb/DynamoDBLocal.jar", "-dbPath", "/projects/dynamodb"]
CMD ["-port", "8000"]

VOLUME ["/projects/dynamodb"]




 
