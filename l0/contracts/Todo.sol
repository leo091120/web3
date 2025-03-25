// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Todos{
    // 定义了一个结构体
    struct Todo{
        string text;
        bool completed;
    }
    
    Todo[] public todos;

    // 三种方式初始化结构体
    function creat(string calldata _text) public {
        todos.push(Todo(_text, false));
        todos.push(Todo({text: _text, completed: false}));
        Todo memory todo ;
        todo.text = _text;

        todos.push(todo);
    }

    function get(uint256 _index) public view returns (string memory text, bool completed){
        Todo storage todo = todos[_index];
        return (todo.text,todo.completed);
    }

    // 更新文本
    function updateText(uint256 _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }
    // 更新Completed
    function updateCompleted(uint256 _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }

}