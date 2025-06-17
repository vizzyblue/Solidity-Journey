// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Simple VIZ Airdrop
 * @dev Only claim function and claim checker
 */
contract VIZAirdrop {
    // Owner
    address public constant OWNER = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    
    // VIZ token address (you'll set this after deploying VIZ token)
    address public vizToken;
    
    // 1000 VIZ per claim
    uint256 public constant CLAIM_AMOUNT = 1000 * 10**18;
    
    // Track claims
    mapping(address => bool) public hasClaimed;
    
    constructor(address _vizToken) {
        vizToken = _vizToken;
    }
    
    /**
     * @dev ONLY FUNCTION 1: Claim tokens (only for the 2 whitelisted addresses)
     */
    function claimTokens() external {
        require(
            msg.sender == 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db || 
            msg.sender == 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2, 
            "Not allowed"
        );
        require(!hasClaimed[msg.sender], "Already claimed");
        
        hasClaimed[msg.sender] = true;
        
        (bool success,) = vizToken.call(
            abi.encodeWithSignature("transfer(address,uint256)", msg.sender, CLAIM_AMOUNT)
        );
        require(success, "Transfer failed");
    }
    
    /**
     * @dev ONLY FUNCTION 2: Check if address has claimed
     */
    function hasAddressClaimed(address user) external view returns (bool) {
        return hasClaimed[user];
    }
}