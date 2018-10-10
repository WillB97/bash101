# Bash101 Challenge

Users connect over SSH to the server.
Each new connection to a user beginning with bash creates a new container from the named image and redirects the shell into the container.
Containers are automatically destroyed when the user logs out.

Each level is a separate folder or git repo.
The folder contains a dockerfile, a tag file and a readme.

The tag file contains the username to be used for the challenge.

The dockerfile follows the form:
```
FROM <base-image>
ARG flag0=flag
ARG chal_user=bash
RUN adduser --gecos "" --disabled-password $chal_user
WORKDIR /home/$chal_user

# place this flag where it is wanted
RUN echo "flag{$flag0}" > flag.txt
# insert an embedded flag
# RUN sed -i flag.txt "s/flag{}/flag{$flag0}/"

# set the command to run at container start (generally a shell)
CMD bash
```
Flags and passwords are then set at build time.

Build each challenge using:
```bash
cd bash0
chal_make <challenge-password> <flag-value> [<flag-value> ..]
```

## Setup
```bash
./setup.sh
# restart your session to apply groups
./run.sh
```
