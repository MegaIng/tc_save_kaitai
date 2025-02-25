import sys

import snappy

file = sys.argv[1]

with open(file, 'rb') as f:
    data = f.read()
    version = data[0]
    if version not in {0, 1}:
        data = data[0:1] + snappy.decompress(data[1:])

with open(file + ".dec", 'wb') as f:
    f.write(data)
