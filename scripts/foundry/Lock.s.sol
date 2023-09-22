// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {Lock} from "contracts/Lock.sol";

contract LockScript is Script {
    Lock public lock;

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(deployerPrivateKey);
        lock = new Lock(block.timestamp + 100);
        vm.stopBroadcast();
    }
}
