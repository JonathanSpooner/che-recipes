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


FROM eclipse/ubuntu_python

# needed for aws-cli help output
# see issue https://github.com/aws/aws-cli/issues/1957
RUN sudo apt-get update && sudo apt-get install -y groff

RUN pip install --upgrade --user awscli

ENV PATH=/home/user/.local/bin:$PATH
