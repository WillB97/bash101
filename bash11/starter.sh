#!/usr/bin/env bash
socat TCP-LISTEN:30000,reuseaddr,fork EXEC:/usr/listen.sh &
# su=bash200