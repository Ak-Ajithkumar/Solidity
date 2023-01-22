//SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

// state variable inside contract fn outside

contract StateVariable {
    uint public sam = 123;

    function sample() external {
        uint notState = 456;
    }
}
