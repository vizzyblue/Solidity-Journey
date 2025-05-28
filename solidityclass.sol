// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract cohort {
    uint age = 18;
    string name = "Learning";
    address tokenOwner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    uint private totalSupply = 1000000;
    uint public price = 6;
    string internal owner = "vizzyblue";
    address public owne = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
    string public ownerName = "Vizzyblue";

    string symbol = "VIZ";
    uint amount = 1000;
    
    // read function example
    function getSymbol() public view returns(string memory) {
        return symbol;
    }

    function getAmount() public view returns(uint){
        return amount;
    }

// this is an example of the state variable and also an example of the write function 
    
    function addNumbers() public pure returns(uint){
        uint c = 20;
        uint d = 30;
        uint sum = c + d;
        return sum;
    }

// example of a local variable
    function calculateNumber(uint _a, uint _b) public pure returns(uint){
        return (_a + _b);
    }

// global variable
    function getOwner() public view returns(address){
        return msg.sender;
    }
}