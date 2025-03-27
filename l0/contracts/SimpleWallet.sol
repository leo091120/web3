pragma solidity ^0.8.0;
import "./simpleWallet.sol";
contract simpleWallet_Test is SimpleWallet { 
     function testCheckBalance() public{
         assertEq(checkBalance(),100);
    }
}