// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract GlobalVariables{
    //Global variables stores some information like who called the function, time etc

    //view functions are those who can read state,global variables
    function globalVariable() external view returns(address,uint,uint){
        //1. msg.sender - stores address who called this function
        address sender = msg.sender;

        //2. block.timestamp - gives current timestamp
        uint timestamp = block.timestamp;

        //3. block.number - gives block number
        uint blockNum = block.number;

        return (sender,timestamp,blockNum);
    }
}