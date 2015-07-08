# spacewalk-client

build:

```
 docker build -t spacewalkclient .
```
run:

```
 docker run -i -t spacewalkclient /root/register.sh <login> <password> <server>
```

It is possible to running of registration several times simultaneously

```
 sh run.sh <number>
```
Default value for repeating is 25.
