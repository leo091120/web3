// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract DataLocation{
    uint256[] public arr;
    mapping (uint256 => address) map;

    struct MyStruct{
        uint256 foo;
    }

    mapping (uint256 => MyStruct) myStructs;

    function f() public {
        _f(arr, map, myStructs[1]);

        MyStruct storage myStruct = myStructs[1];
        myStruct.foo = 42;
        MyStruct memory myMenStruct = MyStruct(0);
        myMenStruct.foo = 41;
    }

    function _f(
        uint256[] storage _arr,
        mapping (uint256 => address) storage _map,
        MyStruct storage _myStruct
    ) internal {
        // arr.push(1);
    }

     // You can return memory variables
    function g(uint256[] memory _arr) public returns (uint256[] memory) {
        // do something with memory array
    }

    function h(uint256[] calldata _arr) external {
        // do something with calldata array
    }
}