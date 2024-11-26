// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MyCantract {
    string name;
    uint256 age;
    bool married;

    constructor( string memory _name,
        uint256 _age,
        bool _married) {
     setData(_name, _age, _married);
    }

    function getData()
        public
        view 
        returns (
            string memory _name, 
            uint256 _age,
            bool _married)
    {
        _name = name;
        _age = age;
        _married = married;
    }

    function setData(
        string memory _name,
        uint256 _age,
        bool _married
    ) public returns (bool) {
        name = _name;
        age = _age;
        married = _married;
        return true;
    }
}
