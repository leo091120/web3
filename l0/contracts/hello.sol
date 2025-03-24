// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract hello{
    //使用private修饰外部账户看不到定义的变量和函数方法
 string private greeting="hello:";

 int public account = 1 * 2**255-1;
 uint public a2 = 1 * 2**256 - 1;
 bool public flag = false;
 bool public flag2 = true;
//16进制20位keccack
address public addr1 = 0x72f435266103E9407b50F0BDEDDd50Ba0C930cc2;

bytes32 public b2 = hex"1000";

enum Staus{
    Active,
    Inactive
}

int[] public arr;
bool[] public arr2;
string[] public arr3;
address[] public arr4;
bytes10[] public arr5;

struct Person {
    uint8 age;
    bool sex;
    string name;
}

Person public  malf = Person(35,false,"malf");
Person public malf2 = Person({age: 15,sex:true,name:"malf2"});
//  function sayhello(string memory name) public view returns(string memory){
//     return string.concat(greeting,name);
//  }
//external关键字调用sayhello2(name)报错
  function sayhello(string memory name) public view returns(string memory){
    return sayhello2(name);
 }

 function sayhello2(string memory name) private view returns(string memory){
    return string.concat(greeting,name);
 }

 function cantat(string memory base, string memory name) public pure returns (string memory){
    return string.concat(base,name);
 }

 function setHello(string memory str) public {
   greeting = str;
 }

}