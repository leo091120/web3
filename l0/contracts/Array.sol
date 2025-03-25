// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Array{
    uint256[] public list;

    function push(uint256 a) public returns (uint256[] memory){
        list.push(a);
        return list;
    }

    function len() public view returns (uint256){
        return list.length;
    }

    function find(uint v) public view returns (int){
        for (uint n; n < list.length; n++){
            if(list[n] == v) return int(n);
        }
        return -1;
    }

    function replace(uint a, uint b) public returns(uint[] memory){
        for (uint n;n<list.length;n++){
            if(list[n] == a){
                list[n] = b;
            }
        }
        return list;
    } 

    function remove(uint k) public returns (uint[] memory){
        for (uint n; n < list.length; n++){
            if(n >= k){
                list[n] = (n+1) >= list.length ? 0 : list[n+1];
            }
        }
        list.pop;
        return list;
    }

    function arrMem(uint _len)public pure  returns (uint[] memory) {
        uint[] memory v = new uint[](_len);
        return v;
    }

    function arrMenPad(uint _len, uint pv) public pure returns (uint[] memory){
        uint[] memory v = new uint[](_len);
        for (uint n; n < v.length; n++){
            v[n] = pv;
        }
        return v;
    }

    function arrFixedMem() public pure returns (uint[2] memory){
        uint[2] memory v;
        v[0] = 100;
        v[1] = 200;
        return v;
    }
}