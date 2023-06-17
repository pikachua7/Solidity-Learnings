// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

//Declare a simple and nested mapping
contract Mapping{
    //mapping(key => value)
    mapping(address => uint) public balance;

    //Nested Mapping
    mapping(address => mapping(address => bool)) public isConnected;
    // This mapping means if address on key is connected with address on value part with a boolean value which tells true or false

    function mappingDemo() external{
        balance[msg.sender] = 10;
        //get value
        uint balanceOfAddress = balance[msg.sender];

        delete balance[msg.sender]; // the value will be set to default values i.e 0,address(0)

        // let's check if this contract and msg.sender is connected

        isConnected[msg.sender][address(this)] = true;
    }



}