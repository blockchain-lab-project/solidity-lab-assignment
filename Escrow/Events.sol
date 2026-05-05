pragma solidity ^0.8.20;

contract Escrow {

    address public depositor;
    address public beneficiary;
    address public arbiter;

    event Approved(uint amount);

    constructor(address _arbiter, address _beneficiary) payable {
        arbiter = _arbiter;
        beneficiary = _beneficiary;
        depositor = msg.sender;
    }

    function approve() external {
        uint amount = address(this).balance;

        (bool success, ) = beneficiary.call{value: amount}("");
        require(success);

        emit Approved(amount);
    }
}