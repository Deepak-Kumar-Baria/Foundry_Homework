// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "forge-std/Script.sol";
import "../src/Books.sol";

contract DeployBooks is Script {
    function run() external {
        vm.startBroadcast();
        
        // Deploy the Books contract with specified values
        Books books = new Books("Programming Foundry", "Deepak Kumar Baria", 100);
        
        vm.stopBroadcast();
    }
}
