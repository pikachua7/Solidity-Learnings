// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Visibility{
    //private - only inside contract
    //internal - only inside contract and child contract
    //public - inside and outside contract
    //external - inside and outside contract(if we declare function as external we can't call it inside a contract)

    uint private x=0;
    uint internal y=1;
    uint public z=2;

    function privateFunc() private pure returns(uint){

    }

    function publicFunc() public pure returns(uint){
        
    }

    function internalFunc() internal  pure returns(uint){
        
    }

    function externalFunc() external pure returns(uint){
        
    }


    function exampleDemo() external view{
        x+y+z;
        privateFunc();
        publicFunc();
        internalFunc();
        //externalFunc() cannot be called
    }
}


contract ChildVisibility is Visibility{
    function demo() external view{
        y+z;
        publicFunc();
        internalFunc();

        //external func cannot be called in child contract
    }
}