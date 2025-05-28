// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract crudFunctions{

    
    string host = "vizzyblue";
    uint id = 1234;

// example of a read function
    function readThis() public view returns(string memory) {
        return host;
    }

//example of a write function and local variable
    function theId() public pure returns(uint) {
        uint a = 13;
        uint b = 9;
        uint sum = a + b;
        return sum;
    }

//example of a state variable
    function getIt(uint c, uint d) private pure returns(uint){
        return c + d;
    }

//example of a global variable
    function getAddy() internal view returns(address){
        return msg.sender;
    }
     
}