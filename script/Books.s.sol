//SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import {Script, console} from "forge-std/Script.sol";
import "../src/Books.sol";

contract DeployBooks is Script {
    Books public books;

    function run() public {
        vm.broadcast();
        books = new Books("Programming Foundry", "Deepak Kumar", 100);
        console.log("Books deployed at address: ", address(books));
    }
}
