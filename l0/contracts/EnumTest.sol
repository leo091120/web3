// SPDX-License-Identifier: MIT
pragma solidity ^0.8;
contract EnumTest {
    enum Status {
        Pending,//等待
        Shipped, //运
        Accepted,//接受
        Rejected,//拒绝
        Canceled //取消
    }

    //默认值是列表中的第一个元素
    //类型的定义，在本例中为“Pending”
    Status public s;

    // Returns uint
    // Pending  - 0
    // Shipped  - 1
    // Accepted - 2
    // Rejected - 3
    // Canceled - 4
    function get() public view returns (Status){
        return s;
    }
    function set(Status _s) public {
        s=_s;
    }

    function cancel() public {
        s = Status.Accepted;
    }

    function reset() public {
        delete s;
    }



}