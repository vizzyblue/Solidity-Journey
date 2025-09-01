// SPDX-License-Identifier: MIT;
pragma solidity = 0.8.2;

contract Construct {
    string public name;
    string public namee;
    uint public theNum;

    constructor(
        string memory _name,
        string memory _namee,
        uint _theNum
     ) {
        name = _name;
        namee = _namee;
        theNum = _theNum;
    }

    function checkNum(uint _v) public pure returns (string memory) {
        if (_v >= 50) {
            return "its xcess ser";
        } else {
            return "its no xcess ser";
        }
    }

    function keepGoing(uint z) public pure returns(uint) {
        uint result = 0;

        for (uint i = 0; i <= z; i++) {
            result += 10;
        }
        return result;
    }
}
