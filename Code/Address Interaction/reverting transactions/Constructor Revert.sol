// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    address public owner;

    constructor() payable {
        require(msg.value >= 1 ether, "1 ether required");
        owner = msg.sender;
    }
}