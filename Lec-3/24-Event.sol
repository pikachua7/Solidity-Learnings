// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Event{
    // Events allow you to write data on blockchain basically log the data of your data
    event Log(string message, uint val);

    // Now this function is not a view or pure function because we are logging some data on blockchai
    //basically writing on blockchain
    function example() external{
        emit Log("Hello World", 123);
    }
}