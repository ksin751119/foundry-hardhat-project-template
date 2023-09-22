#/bin/bash

RPC=https://polygon.llamarpc.com

RPC=$RPC npx hardhat test test/Lock.test.ts
