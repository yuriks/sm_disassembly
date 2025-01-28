import glob
import re
import os

def read_symbols(fn):
    symbols = {}
    with open(fn, 'r') as f:
        for line in f:
            if line.startswith("[labels]"):
                break
        for line in f:
            line = line.strip()
            if not line:
                break
            addr_part, label_part = line.split()
            bank_part, addr_part = addr_part.split(':')
            symbols[label_part] = int(bank_part + addr_part, base=16)
    return symbols

ANCHOR_RE = re.compile('^%anchor\(', re.ASCII)
LABEL_RE = re.compile('^\w+(?=:)', re.ASCII)

def process_file(fname, symbols):
    with open(fname, encoding='utf-8') as f:
        with open(fname + '.tmp', 'w', encoding='utf-8') as outf:
            for line in f:
                if ANCHOR_RE.match(line):
                    continue
                m = LABEL_RE.match(line)
                if m:
                    addr = symbols.get(m.group())
                    if addr is None:
                        print("Label not found:", m.group())
                    else:
                        outf.write("%anchor(${:06X})\n".format(addr))
                outf.write(line)
    os.replace(fname + '.tmp', fname)

def main():
    symbols = read_symbols("vanilla.sym")
    for fname in glob.glob("src/bank_*.asm"):
        print(fname + "...")
        process_file(fname, symbols)

if __name__ == "__main__":
    main()
