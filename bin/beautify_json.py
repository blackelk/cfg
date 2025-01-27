#!/usr/bin/python3
import json
import sys

filepath = sys.argv[1]
data = json.load(open(filepath))

if '--simulate' not in sys.argv:
    json.dump(data, open(filepath, 'w'), indent=4, sort_keys=1)
