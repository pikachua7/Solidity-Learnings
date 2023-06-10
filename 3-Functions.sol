// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract Function{
    
    //external means we would be able to call the function after deployment
    //pure means read only function, no value is edited or added to blockchain neither it reads any state or global variables
    function add(uint x, uint y) external pure returns(uint){
        return x+y;
    }
}