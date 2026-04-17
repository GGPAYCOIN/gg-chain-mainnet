// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title GGPAY Token
 * @dev Standard ERC-20 token for GG HyperNet with a fixed supply of 21 Million.
 */
contract GGPAY is ERC20, ERC20Burnable, Ownable {
    
    // Initial Supply: 21,000,000 GGPAY with 18 decimals
    uint256 private constant INITIAL_SUPPLY = 21000000 * 10**18;

    constructor(address initialOwner) 
        ERC20("GGPAY", "ggpay") 
        Ownable(initialOwner) 
    {
        // Mint all tokens to the contract deployer (Owner)
        _mint(initialOwner, INITIAL_SUPPLY);
    }

    /**
     * @dev Function to mint new tokens. 
     * Restricted to the owner of the contract.
     */
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
