#/bin/bash
RPC=https://polygon.llamarpc.com
KEY=

# Lock
FILE=Lock
# PRIVATE_KEY=$KEY forge script --broadcast --rpc-url $RPC scripts/foundry/$FILE.s.sol:${FILE}Script
PRIVATE_KEY=$KEY forge script --fork-url $RPC --broadcast scripts/foundry/$FILE.s.sol:${FILE}Script
