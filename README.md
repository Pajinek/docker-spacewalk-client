# spacewalk-client

easy way:

```
sudo -s
docker pull pajinek/spacewalk-client
sh run 10
```

build:

```
 docker build -t spacewalk-client .
```
run:

```
 docker run -i -t -e RHN_SERVER=<hostname>
                  -e RHN_USER=<user>
                  -e RHN_PASS=<password>
 spacewalk-client

```

It is possible to running of registration several times simultaneously

```
 sh run.sh <number>
```
Default value for repeating is 25.
