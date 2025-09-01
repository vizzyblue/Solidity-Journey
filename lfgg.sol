// SPDX-License-Identifier: MIT
pragma solidity 0.8.2;

contract wevedone {
    uint tokenPrice = 25;
    string tokenName = "VizzyBlue";
    string private creator = "Vizzy";
    address private creatorr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    uint public addd = 30;

    function getTokenName() public view returns(string memory) {
        return tokenName;
    }

    function getTokenPrice() public view returns(uint) {
        return tokenPrice;
    }

    uint a = 10;
    uint c = 20;

    function getSum(uint _a, uint b) internal pure returns(uint) {
        _a = 99;
        b = 10;
        return(_a + b);
    }

    function showIt(uint _v, uint _b) external pure returns(uint) {
        return (_v * _b);
    }

     function daOwner() public view returns(address) {
        return msg.sender;
     }

     function addEm(uint _add) public pure returns(uint) {
        
     }

}