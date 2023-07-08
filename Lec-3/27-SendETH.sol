// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

//3 ways to send ETH : transfer, send, call
//transfer if it fails it reverts and also gas is not consumed
//send if it fails or passes returns a bool value
//call consumes all gas and returns bool and some data
contract SendETH{
    function sendViaTransfer(address payable _to) external payable{
        _to.transfer(msg.value);
    }

    function sendViaSend(address payable _to) public payable {
        // Send returns a boolean value indicating success or failure.
        // This function is not recommended for sending Ether.
        bool sent = _to.send(msg.value);
        require(sent, "Failed to send Ether");
    }

    function sendViaCall(address payable _to) public payable {
        // Call returns a boolean value indicating success or failure.
        // This is the current recommended method to use.
        //(bool sent, bytes memory data) = _to.call{value: msg.value}("");
        (bool sent, ) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}