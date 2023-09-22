// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Test} from "forge-std/Test.sol";
import {Lock} from "contracts/Lock.sol";

contract LockTest is Test {
    Lock public lock;
    address public user;

    function setUp() external {
        user = makeAddr("user");
        vm.prank(user);
        lock = new Lock(block.timestamp + 1);

        vm.label(user, "user");
        vm.label(address(lock), "registry");
    }

    function testOwner() external {
        assertEq(lock.owner(), user);
    }
}
