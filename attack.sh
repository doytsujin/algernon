#!/bin/sh
./algernon --dev --conf serverconf.lua --dir samples/welcome --httponly --debug --autorefresh --bolt --server --quiet &
echo 'Attacking Algernon for 20 seconds on port 3000, in a way that uses the Lua engine'
echo "GET http://127.0.0.1:3000/counter/" | vegeta attack -rate=500 -duration=20s | tee /tmp/results.bin | vegeta report
