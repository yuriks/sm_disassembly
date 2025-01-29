#!/usr/bin/env python3
from xml.etree import ElementTree
import sys


def find_unused_areas(rom1_fname, rom2_fname):
    with open(rom1_fname, "rb") as f:
        f1 = f.read()
    with open(rom2_fname, "rb") as f:
        f2 = f.read()

    ranges = []
    range_start = None

    assert len(f1) == len(f2)
    for i, (a, b) in enumerate(zip(f1, f2)):
        if range_start is not None:
            if a == b:
                assert range_start < i # No empty ranges allowed
                ranges.append((range_start, i))
                range_start = None
        else:
            if a != b:
                range_start = i

    return ranges


def pc_to_snes(a):
    bank = (a // 0x8000) + 0x80
    offs = (a % 0x8000) + 0x8000
    return (bank << 16) + offs


def update_smart_freespace(xml_fname, ranges):
    tree = ElementTree.parse(xml_fname)

    free_space = tree.getroot().find('UserFreeSpace')
    # Remove existing ranges
    while len(free_space):
        del free_space[-1]

    for start, end in ranges:
        el = ElementTree.SubElement(free_space, 'Space')
        el.set('start', '{:06X}'.format(pc_to_snes(start)))
        el.set('end', '{:06X}'.format(pc_to_snes(end - 1)))

    free_space.text = None
    ElementTree.indent(free_space, level=1)

    tree.write(xml_fname, encoding='utf-8')


def main(args):
    if len(sys.argv) != 4:
        print("Usage: {} <rom_FF> <rom_00> <project.xml>")
        sys.exit(1)

    arg_rom1 = args[1]
    arg_rom2 = args[2]
    arg_projectxml = args[3]

    ranges = find_unused_areas(arg_rom1, arg_rom2)
    print("Found", sum(end - start for start, end in ranges), "bytes of unused space.")
    update_smart_freespace(arg_projectxml, ranges)
    print("Config updated.")


if __name__ == '__main__':
    main(sys.argv)