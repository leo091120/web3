// SPDX-License-Identifier: MIT
pragma solidity ^0.8;
contract Variables {
    //状态变量存储在区块链上
    string public text = "Hello";
    uint256 public num = 123;
    function doSomething() public view  returns (uint256, uint256, address){
        //局部变量不保存在区块链上
        uint256 i = 456;

        //全局变量
        uint256 timestamp = block.timestamp;
        address sender = msg.sender;
        return (i, timestamp, sender);
     
    }
}