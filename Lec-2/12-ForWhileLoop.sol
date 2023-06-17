// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract ForWhileLoop{
    function loop() external pure{

        //FOR LOOP
        for(uint i=0;i<10;i++){
            if(i==3){
                continue;
            }

            if(i==7){
                break;
            }
        }

        // WHILE LOOP
        uint ind=0;
        while(ind<10){
            ind++;
        }
    }
}

// Be Cautious while using loops because if the loop has more iterations it can consume more gas