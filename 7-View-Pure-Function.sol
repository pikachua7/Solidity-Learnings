// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract ViewPure{
    //1. View functions read data from blockchain
    //2. Pure functions don't read data from blockchain

    uint public num; 

    function viewFunc() external view returns(uint){
        return num; 
        //this function neither modifiers any data on blockchain nor stores anything on blockchain, so its a read only function
        //view function reads a state variable,basically it can read data from blockchain
    }

     function pureFunc() external pure returns(uint){
        return 1; 
        //this function neither modifiers any data on blockchain nor stores anything on blockchain, so its a read only function
        //It is a pure function because it doesn't read data from blockchain neither state or global variable
    }

    function addNum(uint x) external view returns(uint){
        return num+x; //state variable num is used from this smart contract
    }

    function add(uint x,uint y) external pure returns(uint){
        return x+y; //no state variables are used and no data is read from blockchain or smart contract
    }
}