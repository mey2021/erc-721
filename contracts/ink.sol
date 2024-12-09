// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
 
contract InkContract {
    string public greeting = "Hello, Ink Project!";
    
    function setGreeting(string memory _greeting) public {
        greeting = _greeting;
    }    
}