// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

// Used concepts : state,global variables,function modifier,function,error

// What we will build : You can claim ownership of the contract

// This contract will have owner and owner will only be able to set a new owner
// Some functions can only be called by owner
contract Ownable{
    address public owner;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner,"Not the owner");
        _;
    }

    // Only current owner can set the new owner
    function setNewOwner(address newOwner) external onlyOwner{
        require(newOwner!=address(0),"Invalid Address");
        owner = newOwner;
    }

    function onlyOwnerCanCall() external onlyOwner{
        //CODE
    }

    function AnyoneCanCall() external{
        //CODE
    }
}