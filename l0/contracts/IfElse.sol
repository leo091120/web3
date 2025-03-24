// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract IfElse{
    function if_else (uint256 num) public pure returns (uint256){
        if(num >= 1 && num < 2){
            return 1;
        }else if(num >= 2 && num < 3){
            return 2;
        }else {
            return 0;
        }
    }

    function ternary(uint256 _x) public pure returns (uint256){
        // if(_x<10){
        //     return 1;
        // }
        // return 2;
        return _x < 10 ? 1 : 2;
    }
}