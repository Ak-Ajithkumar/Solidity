// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Dummy {
    uint age ;

    function setAge(uint x) private {
        age = x;
    }

    function getAge() public view returns(uint) {
        return age;
    }  
}