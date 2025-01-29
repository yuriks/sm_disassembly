#!/usr/bin/env python3

# Modified from https://github.com/tewtal/sm_practice_hack/blob/master/resources/create_dummies.py

import sys

if len(sys.argv) not in (2, 3):
	print("Usage: ff_file.py <out_file> [fill_val]")
	sys.exit(1)

ff_name = sys.argv[1]
fill_value = 0xFF
if len(sys.argv) > 2:
	fill_value = int(sys.argv[2], base=16)

with open(ff_name, "wb") as f:
	rom_size = 3 * 1024 * 1024
	f.write(bytes([fill_value]) * rom_size)
