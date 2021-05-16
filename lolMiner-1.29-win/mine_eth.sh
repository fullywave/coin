#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=ethash.unmineable.com:13333
WALLET=DOGE:DSjjZZnVi9iSxTXFHXXY1S5CccgrENLQpK.fullwave

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo ETHASH --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo ETHASH --pool $POOL --user $WALLET $@
done
