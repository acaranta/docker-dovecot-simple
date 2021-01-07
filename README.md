# Dovecot IMAP Docker.
This is a simple Dovecot IMAP Server & Alpine.
Heavily based on https://github.com/BlackflySolutions/dovecot

## Quickstart:

Run the container with:

```
docker run -p 143:143 \
  -v /host/path/to/config:/config \
  -v /host/path/to/mail:/mail \
  -it acaranta/dovecot
```

## Virtual users

You need to create a passwd file for your virtual users. This file is of the 
format
```
  (username):(password with scheme):(uid):(gid)::(virtual home folder)
```
An example:
```
  user:{plain}password:1050:1050::/mail/user"
```

This file lives at `/host/path/to/config/dovecot.passwd`. 
