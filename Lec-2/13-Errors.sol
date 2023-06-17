// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


// We will learn about require,revert,assert

contract Error{
    function requireExample(uint x) public pure{
        require(x<10,"x is greater than 10");
        //Syntax : require(condition,"message if condition fails")
    }

    //NOTE : 1. Can use revert if there are nested "if" statements
    function revertExample(uint x) public pure{
        if(x>10){
            revert("x is greater than 10");
        }
    }

    uint public ind = 100;
    function assertExample() public view{
        // assert is used to check the true conditions, if it doesn't satisfy means there is a problem in the smart contract
        assert(ind==100);
    }

    // Accidently updating ind, so that assert fails
    function updateInd() public{
        ind+=1;
    }

    // 1. If you send a gas of 1000 GAS, and 100 is used then 900 is refunded
    // 2. State variables are reverted back to there original  values if any error occurs


    //CUSTOM ERRORS

    // custom errors are useful if we want to save more gas
    // They can be used only with revert

    error CustomError(address caller,uint x);

     function revertCustomExample(uint x) public view{
        if(x>10){
            //revert CustomError();
           revert CustomError(msg.sender,x);
           //can also pass parameter to the custom error
        }
    }
    
}