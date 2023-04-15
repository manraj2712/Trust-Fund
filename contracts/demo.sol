// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.14;

contract demo {
    uint something;

    constructor(){
        something = 10;
    }

    function getSomething() public view returns(uint){
        return something;
    }
}