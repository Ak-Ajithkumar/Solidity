// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;


//require,revert, asset
// gas fees refund,state be reverted
contract fnError{
    function testReq(uint _i)public pure{
        require(_i < 10,"I > 10");

    }

    function testRevert(uint _i) public pure {
        if(_i>1){
            if(_i <100){
                revert("I > 100");
            }
        }
    }

    uint public num = 123;
     
    function testAssert() public view {
        assert(num == 123);   // condition to be checked always true like constant 
    }

 
}