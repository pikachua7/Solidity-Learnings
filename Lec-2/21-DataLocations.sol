// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

// Data Location : storage, memeory, calldata
// storage means variable is state variable
// memory means any variable is loaded onto the memory
// calldata is same as memory but is only used for function inputs
contract DataLocations{
    struct MyStruct {
        uint var1;
        string text;
    }

    mapping(address => MyStruct) public myStructs;

    function example(uint[] memory y, string memory s) external returns (MyStruct memory){
        myStructs[msg.sender] = MyStruct({var1:1,text:"First"});
        MyStruct storage myStruct = myStructs[msg.sender];
        // if we want to replace the value we use storage, if we just want to get some data we use memory
        myStruct.text = "replaced";
        MyStruct memory readOnly = myStructs[msg.sender];
//Now even if we try to change data using memory...it will replace but it will last only till the function is executed

        return readOnly;
    }

     function exampleArr() public  returns (uint[] memory){
        uint[] memory memArr = new uint[](3);
        memArr[0] = 1;
        return memArr;
    }

     uint[] public array;
    function getArray() external returns (uint[] memory){
        array = exampleArr();
        return array;
    }


    // Calldata
    /// calldata is same as memory but is used in the function inputs...but why?
    /// Calldata are readonly data locations...if any variable is calldata it's value is readonly..can't be modified
    // calldata saves gas when we pass it to another function because it doesn't create a copy of the variable
    // It directly transfers the variable
    function internalExmp(uint[] calldata y) private{
        uint x = y[0];
       // y[0] = 1; not possible...read only
    } 

     function learnCalldata(uint[] calldata y) external{
       internalExmp(y);
    }

    


}