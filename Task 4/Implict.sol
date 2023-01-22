//SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

// implicit can be done 

contract Implict {

uint8 y;
uint16 z;
uint32 x = y + z;

}

contract Explicit{
int  y = -3;
uint x = uint(y);

// If an integer is explicitly converted to a smaller type, higher-order bits are cut off:

uint32 a = 0x12345678;
uint16 b = uint16(a); // b will be 0x5678 now

//If an integer is explicitly converted to a larger type, it is padded on the left (i.e., at the higher order end). The result of the conversion will compare equal to the original integer:


uint16 c= 0x1234;
uint32 d = uint32(c); // b will be 0x00001234 now

//If a fixed-size bytes type is explicitly converted to a larger type, it is padded on the right. Accessing the byte at a fixed index will result in the same value before and after the conversion (if the index is still in range):


bytes2 e = 0x1234;
bytes4 f = bytes4(e); // b will be 0x12340000

//Eg
bytes2 g = 0x1234;
uint32 h = uint16(g); // b will be 0x00001234
uint32 i = uint32(bytes4(g)); // c will be 0x12340000
uint8 k = uint8(bytes1(g)); // e will be 0x12
uint8 j = uint8(uint16(g)); // d will be 0x34
}



