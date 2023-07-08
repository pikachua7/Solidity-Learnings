// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Enum{
    //struct gives us multiple data type choices
    //bool gives us 2 choices
    //what if we want some extra choices? That's why we use Enum

    enum Status{
        None,  //0
        Pending, //1
        Shipped, //2
        Completed, //3
        Rejected, //4
        Cancelled //5
    }

    //Normal enum declaration
    Status public status;

    //Enum with struct
    struct Order{
        address buyer;
        Status status;
    }

    function get() public view returns(Status){
        return status;
    }

    function set(Status _status) external{
        status = _status;
    }

    function ship() external{
        status = Status.Shipped;
    }
}