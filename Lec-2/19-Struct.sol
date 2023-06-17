// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Struct{
    // struct allows us to grp multiple data types into a single data type

    struct Car{
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars;

    mapping(address => Car[]) public carsByOwner;

    function demo() external{
        Car memory ferrari = Car("Ferrari",2022,msg.sender);
        Car memory indica = Car("Indica",2023,msg.sender);
        Car memory tesla;

        tesla.model = "Tesla";
        tesla.year = 2021;
        tesla.owner = msg.sender;

        cars.push(ferrari);
        cars.push(indica);
        cars.push(tesla);

        cars.push(Car("Alto",2000,msg.sender));

        Car storage _car = cars[0];
        _car.year = 1999;

        delete _car.owner;


    }
}