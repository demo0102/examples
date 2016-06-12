#!/bin/bash

cd "$( dirname "${BASH_SOURCE[0]}" )/lib"
cp -f ../../lib/.qeda.yaml ./
qeda config symbol.style GOST
sed -e 's/signal\/GND/GND/g' .qeda.yaml > .qeda-gost.yaml
mv -f .qeda-gost.yaml .qeda.yaml
qeda generate wa-gost
