// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Crazy {
   string cooker = "Vizzyblue";
   uint time = 1000;
   address tokenOwner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

   uint private totalNightsAwake = 10000;
   string public whatToExpect = "aWholeLotMan";
   string internal uKnowTheCookChad = "lfgggg";

   // lets get that external problem 
   // saw it can be used only in a function

   uint value;
   function setTheValue() public view returns(uint) {
    return value;
   }

   function getTheValue(uint _value) external {
    value = _value;
   } 

   uint cookedTimes = 1111;
   string cookie = "vizzyBlue";

   function nameIt() public view returns (string memory) {
    return cookie;
   }

   function cookedMan() public view returns (uint) {
    return cookedTimes;
   }

   function addvalue(uint _v, uint _b) public pure returns (uint) {
    return (_v + _b);
   }

   function getTheMtfk() public view returns (address) {
    return msg.sender;
   }

   // okay lets if and else

   function levelOne(uint _v) public pure returns (string memory result) {
    if(_v > 10){
        return "eBigPassChief";
    }
    else if(_v < 6){
        return "weFitManage";
    }
   }

   function youTube(uint _w) public pure returns (uint) {
    return _w < 10 ? 1: 2;
   }

   function abtRest(uint _s) external pure returns (uint) {
    uint result = 0;
    for(uint i = 0; i < _s; i++) {
    if (_s < 1) {
        continue;
    }
    if(_s > 10){
        break;
    }
    result += i;
    }
    return result;
   }
 
}