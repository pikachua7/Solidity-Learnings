// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Counter{
    uint public count;

    //This function is neither a view nor pure because this is not a read only function
    //We are modifying the value here in this function
    function increment() external{
        count+=1;
    }

    function decrement() external{
        count-=1;
    }
 }