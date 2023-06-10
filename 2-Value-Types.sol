// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract ValueTypes{
    //Data types is solidity are classified as Values & References
    //Value means data stores values like boolean stores : true or false

    bool public b = true;
    uint public myUInt = 3; // uint contains values > 0, uint by default means uint256, range: 0->2^256-1

    int public myInt = -1; //int contains negative values too, by default means int25, range:-2^255->2^255-1

    //Finding Maximum & Minimum range of int
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    address public addr = 0x916243CBB0B10A2251b0c2F5908C8683ddF1F5A5;

}