// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Strcut {
    struct Car {
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carowner;

    function sample() external {
        Car memory Tata = Car("Tata",2020,msg.sender);
        Car memory MG = Car ({model:'MG',year:2020,owner:msg.sender});
        Car memory tesla;
        tesla.model = "tesla";
        tesla.year = 2020;
        tesla.owner = msg.sender;

        cars.push(Tata);
        cars.push(MG);
        cars.push(tesla);
    }
}
