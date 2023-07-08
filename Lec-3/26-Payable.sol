// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

//payable keyword adds functionality to send and recieve ether
contract Payable{
    address payable public owner;

    constructor(){
       // owner = msg.sender; //This will fail because owner is payable and msg.sender is not so we need to do casting
        owner = payable(msg.sender);
    }

    //This function can send ETH to this smart contract
    function deposit() external payable{

    }

    //Query Balance of this contract
    function getBalance() external view returns(uint){
        return address(this).balance;
    }

}