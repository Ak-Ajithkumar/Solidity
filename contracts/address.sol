// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

contract alert {
    address public owner;
    address payable public receiver = payable(0x892e937F351e692484B2e7939214Cd62632B8216);

    function getBal() public returns(uint,uint){
        owner = msg.sender;
        return (owner.balance,receiver.balance);
    }
}