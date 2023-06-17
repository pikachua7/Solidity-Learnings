// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract CounterV1{
    uint public count;

    //This function is neither a view nor pure because this is not a read only function
    //We are modifying the value of count here in this function
    function increment() external{
        count+=1;
    }

    function decrement() external{
        count-=1;
    }
 }

contract CounterV2{
    uint public num;

    function add() public returns(uint) {
        num+=1; //function is not view because state variable's state is modified
        return num;
    }
    function dec() public returns(uint) {
        num-=1;
        return num;
    }
}

// This is a wrong implementation because num1 is being declared as a local variable and we are returning that value, it's not modifying the num variable
contract CounterV3{
    uint public num;
    function add() public view returns(uint) {
        uint num1 = num+1;
        return num1;
    }
    function dec() public view returns(uint) {
        uint num1 = num-1;
        return num1;
    }
}
