// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
// contract Function {

//     function returnMany() public pure returns (uint256, bool, uint256){
//         return (1, true, 2);
//     }

//     function named() public pure returns (uint256 x, bool b, uint256 y){
//         return (1, true, 2);
//     }

//     //返回值可以赋给它们的名称。
//     //在这种情况下，可以省略return语句。
//     function assigned() public pure returns (uint256 x, bool b, uint256 y){
//         x = 1;
//         b = true;
//         y = 2;
//     }

//     //调用另一个函数时使用解构赋值
//     //函数返回多个值。
//     function destructuringAssignments() public pure returns (uint256, bool, uint256, uint256, uint256){
        
//         (uint256 i, bool b, uint256 j) = returnMany();

//         //值可以省略。
//         (uint256 x, , uint256 y) = (4, 5, 6);
//         return  (i, b, j, x, y);
//     }

//     //不能使用map作为输入或输出
//     //可以使用数组作为输入
//     function arrayInput(uint256[] memory _arr) public {}
//     // Can use array for output
//     uint256[] public arr;   

//     function arrayOutput() public view returns (uint256[] memory){
//         return arr;
//     }

// }

contract XYZ{
    //调用键值输入函数
    function someFuncWithManyInputs(
        uint256 x,
        uint256 y,
        uint256 z,
        address a,
        bool b,
        string memory c
    ) public pure returns (uint256){}

    function callFunc() external pure returns(uint256){
        return someFuncWithManyInputs(1, 2, 3, address(0), true, "c");
    }

    function callFuncWithKeyValue() external pure returns (uint256){
        return someFuncWithManyInputs({
            a: address(0),
            b: true,
            c: "c",
            x: 1,
            y: 2,
            z: 3
        });
    }
}