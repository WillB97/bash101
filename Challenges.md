bash0
```bash
pwd # flag in path
# talk about cd, ., .., /
ls # flag in file name
ls -l # flag in owner (permissions)
ls -a # flag in hidden file
cat # regular file, file beginning with -, spaces
# talk about man (tldr)
history # all the commands
```

bash1
```bash
file # find the text file in a directory of data files
```

bash2
```bash
find -size 1033c # find file of known size in a directory tree
```

bash3
```bash
find / -group 'bandit6' -user 'bandit7' # find file owned by a specific group and execute it
```

bash4
```bash
grep millionth data.txt # find line containing known word
```

bash5
```bash
# talk about pipes and redirection
sort -h data.txt |uniq -u # find unique line (redirection)
```

bash6
```bash
cat data.txt |base64 -d # decode base64 string
```

bash7
```bash
cat data.txt | tr '[N-ZA-Mn-za-m]' '[A-Za-z]' # rot13
```

bash8
```bash
xxd -r data.txt|gunzip # hexdump
```

bash9
```bash
diff password.old password.new  # diff files
```

bash10
```bash
ssh bandit14@localhost -p2220 -i sshkey.private # ssh keys
```

bash11
```bash
cat /etc/bandit_pass/bandit14 | nc localhost 30000 # netcat
```

bash12
```bash
cat /etc/bandit_pass/bandit15 |openssl s_client -connect localhost:30001 -ign_eof # ssl netcat
```

bash13
```bash
ssh bandit18@bandit.labs.overthewire.org -p2220 "cat readme" # ssh tty disabled
```

zip in jpeg
```bash
xxd -r
base64 -d
# split file (split,cat)
gunzip|bzip2 -d|tar -zxO|tar -xO|tar -jxO|gunzip
```