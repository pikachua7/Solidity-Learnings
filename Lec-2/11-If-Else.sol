// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract IfElse{
    function ifElse(uint x) external pure returns(uint){
        if(x > 10){
            return 1;
        }
        else if(x < 10){
            return 2;
        }
        else{
            return 3;
        }
    }

    function ternary(uint x) external pure returns(uint){
        return x<10 ? 1 : 2;

        // operation ? if operation is successful what value to return : if operation is not successful what value to return
    }
}