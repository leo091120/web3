// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Base contract X
contract X {
    string public name;
    constructor(string  memory _name) {
        name = _name;
    }
}

// Base contract Y
contract Y {
    string public text;
    constructor(string  memory _text) {
        text = _text;
    }
}
//有两种方法可以初始化带有参数的父合约。

//在继承列表中传递参数。
contract B is X("Input to X"), Y("Input to Y") {}

contract C is X, Y{

    //在构造函数中传递参数，类似于函数修饰符。
    constructor(string memory _name, string memory _text) X(_name) Y(_text){}
}

//无论子合约的构造函数中列出的父合约的顺序如何，父构造函数总是按照继承顺序调用。
// Order of constructors called:
// 1. X
// 2. Y
// 3. D
contract D is X, Y{
    constructor() X("X was called") Y("Y was called") {}
}

// Order of constructors called:
// 1. X
// 2. Y
// 3. E
contract E is X, Y{
    constructor() Y("Y was called") X("X was called") {}
}