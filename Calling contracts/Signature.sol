// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Sidekick {

    function sendAlert(address hero) external {
        (bool success, ) = hero.call(abi.encodeWithSignature("alert()"));
        require(success);
    }
}