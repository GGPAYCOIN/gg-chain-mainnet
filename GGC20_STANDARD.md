# 📜 GGC-20 Token Standard

**GGC-20** (GG Chain 20) is the official technical standard for fungible tokens used within the **GG HyperNet** ecosystem. 

## Overview
GGC-20 is designed to be fully compatible with the Ethereum Virtual Machine (EVM). It inherits the security and reliability of the ERC-20 standard while being optimized for the high-speed and low-fee environment of the GG HyperNet Layer-1 blockchain.

## Technical Specifications
Any token deployed on GG HyperNet must implement the following functions to be recognized as a GGC-20 token:

- `name()`: Returns the name of the token.
- `symbol()`: Returns the symbol of the token.
- `decimals()`: Returns the number of decimals used (Standard is 18).
- `totalSupply()`: Returns the total supply of the token.
- `balanceOf(address account)`: Returns the token balance of a specific address.
- `transfer(address to, uint256 amount)`: Moves tokens to a specific address.
- `approve(address spender, uint256 amount)`: Sets an allowance for another address.

## Why GGC-20?
- **Seamless Integration:** Works out of the box with MetaMask and major Web3 tools.
- **Eco-System Ready:** GGC-20 tokens can be easily integrated into GG HyperNet's future DEX, Wallets, and Gaming platforms.
- **Security:** Built on the industry-standard OpenZeppelin framework.

## Implementation Example
To create a GGC-20 token, developers should use the standard Solidity implementation provided in our `/contracts` folder.
