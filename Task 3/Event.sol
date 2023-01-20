// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract EventFunctions {
    event Log(string message, uint val);
    event IndexedLog(address indexed sender , uint val);

   function sample() external{
       emit Log("sample",1234);
       emit IndexedLog(msg.sender,100);
   } 

 
}