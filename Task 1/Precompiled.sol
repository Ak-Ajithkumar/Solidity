// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;


function ecadd(uint256 ax, uint256 ay, uint256 bx, uint256 by) public constant returns(uint256[2] p) {
  uint256[4] memory input;
  input[0] = ax;
  input[1] = ay;
  input[2] = bx;
  input[3] = by;  
  assembly {
    // ecadd precompile!
    if iszero(call(not(0), 0x06, 0, input, 0x80, p, 0x40)) {
       revert(0, 0)
    }    
  
  }