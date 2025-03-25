// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface User {
    
    function runWork() external returns (bool);
}

contract ParentTest is User {
    bool isWork;
    function runWork() external override returns (bool){
        isWork = true;
        return isWork;
    }
    function getWork() external view returns (bool) {
        return isWork;
    }

    function test() external pure returns (string memory){
        return "parent";
    }

}

contract ChildTest is ParentTest {
    function callParentTest() public  view returns (string memory){
        return string(bytes.concat("child=",bytes(this.test())));
    }
}