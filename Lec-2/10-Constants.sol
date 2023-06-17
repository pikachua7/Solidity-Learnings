// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Constants{
    address public normal_address = 0x916243CBB0B10A2251b0c2F5908C8683ddF1F5A5;
    uint public normal_Uint = 100;

    // To make the above statements as a constant

    address public constant CONSTANT_ADDRESS = 0x916243CBB0B10A2251b0c2F5908C8683ddF1F5A5;
    uint public constant CONSTANT_UINT = 100;
}


// Why do we make constants?

// Because they help us in saving gas