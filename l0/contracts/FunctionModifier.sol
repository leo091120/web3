// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract FunctionModifier{
    bool isLocked;
    address owner;

    modifier OnlyLessThanTen(uint256 a){
        require(a <= 10, "Only Less Than 10");
        _;
    }
    modifier CheckedLocked(){
        require(!isLocked,"Locked");
        isLocked=true;
        _;
        isLocked=false;
    }
    modifier isOwner(){
        require(msg.sender == owner,"Permissed denied");
        _;
    }
    function test(uint256 a) public OnlyLessThanTen(a) pure returns (uint256){
        return a;
    }
    function test1() public CheckedLocked() returns (uint256){
        return 1;
    }


}