// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MyCantract2 {
    struct Person {
        string name;
        uint256 age;
    }

    mapping(uint256 => Person) public people;
    uint256 public peopleLen = 0;
    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "yuo are not owner of this cantract!!");
        _;
    }

    function addPerson(string memory _name, uint256 _age)
        public
        onlyOwner
        returns (uint256)
    {
        people[peopleLen] = Person(_name, _age);
        increment();
        return peopleLen;
    }

    function increment() internal returns (bool) {
        peopleLen += 1;
        return true;
    }
}
