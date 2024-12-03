// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

//Import statement for Basic ERC-20 Operations and Ownable using OpenZeppelin Library
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {
    mapping(uint256 => uint256) public itemPrices;

    event Redeemed(address indexed user, uint256 itemId, uint256 price);
    event ItemAdded(uint256 itemId, uint256 price);

    constructor() ERC20("Degen", "DGN") {
        // Example in-game items with prices
        itemPrices[1] = 1;
        itemPrices[2] = 2; 
        itemPrices[3] = 3; 
    }

    // Mint new tokens (owner-only)
    function mintTokens(address recipient, uint256 amount) external onlyOwner {
        _mint(recipient, amount);
    }

    // Redeem tokens for in-game items
    function redeemItem(uint256 itemId) external {
        uint256 price = itemPrices[itemId];
        require(price > 0, "Item not available");
        require(balanceOf(msg.sender) >= price, "Insufficient balance");

        _burn(msg.sender, price);
        emit Redeemed(msg.sender, itemId, price);
    }

    // Add or update item prices (owner-only)
    function addOrUpdateItem(uint256 itemId, uint256 price) external onlyOwner {
        itemPrices[itemId] = price;
        emit ItemAdded(itemId, price);
    }

    // Burn unused tokens
    function burnTokens(uint256 amount) external {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _burn(msg.sender, amount);
    }

    // Get the token balance of a user
    function balanceOfUser(address user) external view returns (uint256) {
        return balanceOf(user);
    }
}
