#!/bin/bash
python3.8 ../PythonCake/main.py 1 &>/dev/null & 
bash -c "../aflnet/afl-fuzz -i in -o out -D 1000 -m 1000 -N udp://0.0.0.0/10001 -t 1000 -W 100 -l 4001 -P OT ../CCookie/bin" &>/dev/null &
disown #1
disown #1
