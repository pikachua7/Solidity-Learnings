// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract LocalVariables{
    //Local Variables have there scope under a function

    //As the function executes, the data of the variable will be gone
    function abc() external pure{
        uint x =123;
        x+=1;
    }
}