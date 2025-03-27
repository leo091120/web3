// SPDX-License-Identifier: MIT
pragma solidity ^0.8;
contract Immutable{
    //大写常量变量的编码约定
    address public immutable MY_ADDRESS;
    uint256 public immutable MY_UINT;
    constructor(uint256 _myUint){
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUint;
    }
}