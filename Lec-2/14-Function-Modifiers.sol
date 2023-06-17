// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract FunctionModifier{
   bool public paused;
   uint public count;

   function setPause(bool _paused) external{
        paused = _paused;
   }

   modifier whenProgramNotPaused(){
        require(!paused,"Program is paused");
        _; //This underscore tells solidity to call the function in which this modifier is used
   }

   function increment() external whenProgramNotPaused{
        //require(!paused,"Program is paused");
        count+=1;
   }

   function decrement() external whenProgramNotPaused{
        //require(!paused,"Program is paused");
        count-=1;
   }


   modifier check(uint _x){
        require(_x<100,"x is greater than 100");
        _;
   }

   function incbyX(uint _x) external whenProgramNotPaused check(_x){
        require(_x<100,"x is greater than 100");
        count+=_x;
   }

}