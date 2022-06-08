#!/bin/bash
kill -9 $(ps -ux | grep main.py |  awk -F'\n' '{print $1;exit}' | awk -F " " '{print $2;exit}')
kill -9 $(ps -ux | grep afl-fuzz |  awk -F'\n' '{print $1;exit}' | awk -F " " '{print $2;exit}')
kill -9 $(ps -ux | grep ot-cli-ftd |  awk -F'\n' '{print $1;exit}' | awk -F " " '{print $2;exit}')
