// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract ErrorTest{  

    error OnlyLessTen(uint256 v);
    
    function test(uint256 a) public pure returns (uint256){
        assert(a <= 10);
        return a;
    }
    function test1(uint256 b) public pure returns (uint256){
        if(b > 10) revert("Only less 10");
        return b;
    }
    function test2(uint256 c) public pure returns (uint256){
        require(c <= 10, "Only less than 10");
        return c;
    }
    function test3(uint256 d) public pure returns (uint256){
        if(d > 10) revert OnlyLessTen(d);
        return d;

    }

}