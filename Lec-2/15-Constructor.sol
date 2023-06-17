// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


//constructors are only called once
//they are mainly used to initialize state variables
contract Constructor{
    address public owner;
    uint public x;

    constructor(uint _x){
        owner = msg.sender;
        x = _x;
    }
}