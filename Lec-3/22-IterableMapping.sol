// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract IterableMapping{
    mapping(address => uint) public balances;
    mapping(address => bool) public inserted;

    address[] public keys;

    function set(address key, uint val) external{
        balances[key] = val;

        if(!inserted[key]){
            inserted[key] = true;
            keys.push(key);
        }
    }

    function getSize() external view returns (uint){
        return keys.length;
    }

    function getFirstValue() external view returns(uint){
        return balances[keys[0]];
    }

    function getLastValue() external view returns(uint){
        return balances[keys[keys.length -1]];
    }

     function getIthValue(uint i) external view returns(uint){
        return balances[keys[i]];
    }
}