// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract StateControl{

    uint256 public id;
    function setId(uint256 x) public returns(bool){
        id = x;
        return true;
    }
    function getId() public view returns (uint256 ){
        return id;
    }

}