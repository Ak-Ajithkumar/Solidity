//SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract Array {
    uint[] public dyn = [1, 2, 3, 4, 5];
    uint[3] public sam = [1, 2, 3];

    function examplesO() external {
        dyn.push(4);
        delete dyn[1];
    }
}
