//SPDX-License-Identifier: UNLICENSED

pragma solidity >= 0.5.0 < 0.9.0;

contract Lottery {
    address public manager;
    address payable[] public participants;

    constructor(){
        manager = msg.sender; // global variable
    }

    receive() external payable {
        require(msg.sender != manager,"Manager cannot participate in lottery.");
        require(msg.value == 1 ether, "Minimum amount to participate is 1 ether");
        participants.push(payable(msg.sender));
    }
    function getBalance() public view returns(uint){
        require(msg.sender == manager, "You are not authorized to access this field.");
        return address(this).balance;
    }
}