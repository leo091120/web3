// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract GlobalVar{
    function test() public view returns (uint256, uint256, address, uint256, uint256, uint256){
        return (block.number, block.timestamp, block.coinbase, block.chainid, block.gaslimit, block.prevrandao);
    }
    function echo(uint256 a) public view returns (uint256, bytes4, address, bytes memory){
        return (a, msg.sig, msg.sender, msg.data);
    }
    function echoData(uint256 a) public view returns (uint256, address, address, uint256){
        return (a, msg.sender, tx.origin, tx.gasprice);
    }
}