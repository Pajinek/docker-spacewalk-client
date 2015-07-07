# spacewalk-client

build:

 docker build -t spacewalkclient .

run:

 sudo docker run -i -t spacewalkclient /usr/bin/bash /root/register.sh <login> <password> <server>
