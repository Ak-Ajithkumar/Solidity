// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

// storage,memory ,call Data

contract Storage{
    struct Mystruct{
        uint foo;
        string text;
    }

        mapping(address =>Mystruct)  public mystructs;


    function sample() external {
        mystructs[msg.sender] = Mystruct({foo:123,text:"bar"});

        Mystruct storage mystruct = mystructs[msg.sender];
        mystruct.text = "foo";

        Mystruct storage readOnly = mystructs[msg.sender];
        readOnly.foo = 456; 
  }
}

   
