// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract WGGPAY is ERC20 {
    constructor() ERC20("Wrapped GGPAY", "WGGPAY") {}

    deposit() public payable {
        _mint(msg.sender, msg.value);
    }

    withdraw(uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _burn(msg.sender, amount);
        payable(msg.sender).transfer(amount);
    }

    receive() external payable {
        deposit();
    }
}
