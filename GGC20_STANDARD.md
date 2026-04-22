## 🛠️ Deploying GGC-20 Tokens (Smart Contracts)
Developers can deploy smart contracts and GGC-20 tokens on GGPAY Mainnet using Remix IDE or Hardhat.

### Using Remix IDE:
1. Open [Remix IDE](https://remix.ethereum.org/).
2. Connect MetaMask to **GGPAY Mainnet**.
3. Create a new `.sol` file and paste your ERC-20 (GGC-20) code.
4. In the "Deploy & Run Transactions" tab, select **Injected Provider - MetaMask**.
5. Click **Deploy**.

### Sample GGC-20 Contract:
```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyGGC20Token is ERC20 {
    constructor() ERC20("My GGPAY Token", "GGC") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
}
