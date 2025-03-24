// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract testInt{
    int8 a=-1;
    int16 b=2;
    uint32 c=10;
    uint8 d=16;
    function GTOrEQ(uint8 x,uint8 y) public pure returns (bool){
    return x > y;
    }
    function LTOrEQ(uint8 x,uint8 y) public pure returns (bool){
    return x <= y;
    }
    function GT(uint8 x,uint8 y) public pure returns (bool){
    return x > y;
    }
    //less than 小于
    function LT(uint8 x,uint8 y) public pure returns (bool){
    return x < y;
    }
    function EQ(uint8 x,uint8 y) public pure returns (bool){
    return x == y;
    }
     function NEQ(uint8 x,uint8 y) public pure returns (bool){
    return x != y;
    }
    //2 * 8 -1 255
    //1111 1111 => 255
    //0000 0010 => 2
    function add(int8 x,uint8 y) public pure returns (uint8){
    return  uint8(x) + y;
    }
    function uintSub(uint8 x,uint8 y) public pure returns (uint8){
    return x - y;
    }
    function divide(uint8 x,uint8 y) public pure returns (uint8){
    return x / y;
    }
    function modulo(uint8 x,uint8 y) public pure returns (uint8){
    return x % y;
    }
    function exponentiation(uint8 x,uint8 y) public pure returns (uint8){
    return x ** y;
    }
    // 0000 0011 左边位移2位
    // 0000 1100   12
    // 1111 1111 左边位移2位
    // 1111 1100 252
    function leftshift(uint8 x,uint8 y) public pure returns (uint8){
    return x << y;
    }
    function rightshift(uint8 x,uint8 y) public pure returns (uint8){
    return x >> y;
    }
    //按位与 只要有一个是0则是0
    // 0000 1100 =>12
    // 0000 0101 =>5
    // 0000 0100 =>4
    function and(uint8 x,uint8 y) public pure returns (uint8){
    return x & y;
    }
    //按位或 只要有一个是1则是1
    // 0000 1100 =>12
    // 0000 0101 =>5
    // 0000 1101 =>13
    function or(uint8 x,uint8 y) public pure returns (uint8){
    return x | y;
    }
     //按位异或 
    // 0000 1100 =>12
    // 0000 0101 =>5
    // 0000 1001 =>9
    function xor(uint8 x,uint8 y) public pure returns (uint8){
    return x ^ y;
    }
    function testPlusPlus() public pure returns(uint8){
    uint8 x = 1;
    uint8 y = ++x;
    return y;
    }
}