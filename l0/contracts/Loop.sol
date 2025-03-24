// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Loop{
    event Dump(uint256 n);
    function loop(uint256 a) public returns (uint256) {
        
        for (uint256 x = 1; x < a; x++){
            if(x==5){
                emit Dump(x);
                continue ;
            }
            if(x==8){
                break ;
            }
        }
        return  a;
        }
    function test2(uint256 b) public returns (uint256){

        uint256 j;
        while(j < b){
            emit Dump(j);
            j++;
        }
        return b;
    }
}