# spacewalk-client

Original page of docker image https://github.com/Varhoo/docker-spacewalk-client

## How to start 
Easy way to get image from public repository:

```
docker pull pajinek/docker-spacewalk-client
```

Build:

```
docker build -t docker-spacewalk-client .
```

Run when build it:

```
docker run -i -t -e RHN_SERVER=<hostname> \
                  -e RHN_USER=<user> \
                  -e RHN_PASS=<password> \
docker-spacewalk-client
```

or when pull it:

```
docker run -i -t -e RHN_SERVER=<hostname> \
                  -e RHN_USER=<user> \
                  -e RHN_PASS=<password> \
pajinek/docker-spacewalk-client
```


It is possible to running of registration simultaneously several times. Script is contained in source of image on github.

```
git clone https://github.com/Varhoo/docker-spacewalk-client.git
sh batch.sh <rhn_user> <rhn_password> <rhn_server> <number_registration>
```

Default value for number of repeating is 25.
