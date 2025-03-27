// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MappingSection{
    mapping(uint => address) users;
    mapping(address => mapping(address => uint8)) friends;

    function put(uint k, address v) public returns(address) {
        users[k] = v;
        return v;
    }

    function getUsers(uint k) public view returns(address) {
        return users[k];
    }

    function removeUser(uint k) public returns(bool) {
        delete users[k];
        return true;
    }

    function addFriends(address addr) public returns(bool){
        friends[tx.origin][addr] = 2;//0 deleted 1 pending 2 success
        friends[addr][tx.origin] = 1;
        return true;
    }

    function getFriendStatus(address addr) public view returns (uint8){
        return  friends[tx.origin][addr];
    }

    function setFriend(address u, address addr) public returns (uint8){
        return friends[u][addr] = 2;
    }

    function deletedFriend(address u, address addr) public returns (bool){
        delete friends[u][addr];
        return true;
    }
}