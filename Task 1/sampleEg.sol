//SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract Task {

    // state variable
    uint256 public stack;

    address public owner;

    bool public flag;


    // mapp => addres => uint256


    constructor() {
        owner = msg.sender;
    }

    function addOne(uint256 input) public returns(uint256) {
        stack = stack + 1;
        return input + stack;
    }

    function sendETH(address payable receiver, uint256 val) public payable returns (bool) {
        require(val <= msg.value, "ERR: INSUFFICIENT FUNDS");
        receiver.call{ value: val };
        return true;
    }

}