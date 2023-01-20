//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract FunctionModifier{
    bool public  stop;
    uint public  count;

    function setStop(bool _stop) external{
        stop = _stop;

    }

    modifier whenNotStop {
     require(!stop,"stopped");
 _;  // call actual function the modier wraps like in inc () & dec ()
    }

    function inc() external whenNotStop {
        count += 1;
    }

      function dec() external whenNotStop {  
        count -= 1;
    }

    modifier ValidateInput(uint _x){
        require(_x < 100, "X >= 100");
        _;

    }

    function incInput(uint _x) external whenNotStop ValidateInput(_x){
        count += 1;
    }

   
}