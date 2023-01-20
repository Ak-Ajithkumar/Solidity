// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract SampleTask {
    uint public age =10;
    address owner;
  

    function getter() public view returns(uint){
        return age ;
    }

    modifier onlyOwner {
      require(msg.sender == owner);
      _;
   }
    function setter(uint age) external  onlyOwner{
         age = age + 1;
         
    }

  

}