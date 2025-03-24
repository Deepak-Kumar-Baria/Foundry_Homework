// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {Books} from "../src/Books.sol";

contract BooksTest is Test {
    Books public books;

    // setUp function to deploy the contract
    function setUp() public {
        books = new Books("Programming Foundry", "Deepak Kumar Baria", 100);
    }

    // Test: get_book should return the initial values
    function test_get_book() public {
        Books.Book memory book = books.get_book();
        assertEq(book.title, "Programming Foundry");
        assertEq(book.author, "Deepak Kumar Baria");
        assertEq(book.pages, 100);
    }

    // Test: update_pages should change the number of pages
    function test_updatePages() public {
        books.update_pages(150);
        Books.Book memory book = books.get_book();
        assertEq(book.pages, 150);
    }
}
