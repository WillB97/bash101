#!/usr/bin/env bash
socat OPENSSL-LISTEN:30001,cert=/usr/cert.pem,key=/usr/key.pem,verify=0,reuseaddr,fork EXEC:/usr/listen.sh &
# su=bash200