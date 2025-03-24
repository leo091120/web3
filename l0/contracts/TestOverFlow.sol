// SPDX-License-Identifier: MIT
pragma solidity ~0.8.0;
contract TestOverFlow{
//~0.8.0版本避免溢出要加上

    //1111 1111 => uint8 255
    //0000 0001
    //1 | 0000 0000 =>0
    function add1() public pure returns (uint8) {
     unchecked{
           uint8 x = 128;
           uint8 y = x * 2;
           return y;
        }
    }
    //1111 0000 uint8 => 240
    //0001 0000 uint8 => 16
    //1 | 0000 0000 =>0
    function add2() public pure returns (uint8) {
        unchecked{
          uint8 i = 240;
          uint8 j = 16;
          uint8 k = i + j;
          return k;
        }
    }
    // 0000 0001 =>uint8 m
    // 0000 0010 =>uint8 2
    // 1111 1111 =>uint8 255
    function sub1() public pure returns (uint8) {
        unchecked{
    uint8 m = 1;
    uint8 n = m -2;
    return n;
    }
    }
   
}