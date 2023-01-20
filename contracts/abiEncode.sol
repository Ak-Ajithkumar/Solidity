// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

contract Encode{
    function encode (address _address )
    public  pure returns (bytes memory){
        return (abi.encode(_address));
    }
}