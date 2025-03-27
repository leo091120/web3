// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract ErrotAccount{
    uint256 public balance;
    uint256 public constant MAX_UINT = 2 ** 256 - 1;

    function deposit(uint256 _amount) public {
        uint256 oldBalance = balance;
        uint256 newBalance = balance + _amount;

        require(newBalance >= oldBalance,"Overflow");

        balance = newBalance;
        assert(balance >= oldBalance);
    }

    function withdraw(uint256 _amount) public {
        uint256 oldBalance = balance;
        require(balance >= _amount, "Underlow");

        if(balance < _amount){
            revert("Underlow");
        }
        balance -= _amount;
        assert(balance <= oldBalance);
    }
}