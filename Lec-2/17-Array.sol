// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

//1. Array : Dynamic or fixed size
//2. Initialization
//3. Insert(push),pop,delete,update,length,get
//4. Creating Array in memory
//5. Returning array from function
contract Array{
    //Dynamic Array
    uint[] public nums;

    //Fixed Size Array
    uint[3] public fixedArray = [1,2,3]; 
    // If the initiliaztion of array for fixed size doesn't match with the size then contract will not compile

    function operationOnArray() public{
        nums.push(4); //nums : [4]
        nums.push(5);
        nums.push(6);
        uint x = nums[1]; //5
        nums[1] = 88;
        delete nums[1];// delete element at index 1 : [1,0,6] default value is replaced for deleted element
        nums.pop(); // [1,0]
        uint length = nums.length;
        
        // Create Array in Memory
        uint[] memory memoryArray = new uint[](5);
        // if creating a array in memory then it needs to be a fixed size array
        // so can't use push,pop
        // only things we cna do is update or get a value
        memoryArray[1] = 100;
    }

    // NOT RECOMMENED TO RETURN A ARRAY THROUGH FUNCTION
    function returnArray() external view returns (uint[] memory){
        return nums;
    }
}