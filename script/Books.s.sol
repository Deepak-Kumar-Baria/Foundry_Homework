// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Books} from "../src/Books.sol";

contract DeployBooks {
    Books public books;

    function run() public {
        books = new Books("Programming Foundry", "Deepak Kumar Baria", 100);
    }
}
