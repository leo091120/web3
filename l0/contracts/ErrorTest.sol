// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract ErrorTest{
    function testRequire(uint256 _i) public pure {
        require(_i > 10,"Input must be greater than 10");
    }

    function testRevert(uint256 _i) public pure{
        if(_i <= 10){
            revert("Input must be greater than 10");
        }
    }

    uint256 public num;

    // Assert应该只用于测试内部错误
    //检查不变量。
    //这里我们断言num总是等于0
    //因为无法更新num的值
    function testAssert() public view{
        assert(num == 0);
    }
    
    //自定义错误
    error InsufficientBalance(uint256 balance, uint256 withdrawAmount);
    
    function testCustomError(uint256 _withdrawAmount) public view {
        uint256 bal = address(this).balance;
        if(bal < _withdrawAmount){
            revert InsufficientBalance({
                balance:bal,
                withdrawAmount: _withdrawAmount
            });
        }
    }
}