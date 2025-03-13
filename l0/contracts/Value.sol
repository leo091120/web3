// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0; // or any other version you're using, e.g., 0.6.x

contract Value {
    uint256 public tokenBalance;

    constructor() {

        tokenBalance = 0;

    }

    function addValue() payable public {
        tokenBalance = tokenBalance + (msg.value/10);
    }

    function getTokemBalance() view public returns(uint256) {
        return tokenBalance;
    }
}