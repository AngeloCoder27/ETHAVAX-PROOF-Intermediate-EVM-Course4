# DegenToken - ERC20 Token with In-Game Item Redemption

This Solidity program defines **DegenToken**, a custom ERC20 token developed using OpenZeppelin's **ERC20** and **Ownable** libraries. The contract demonstrates both standard and advanced ERC20 functionalities, enabling users to mint, burn, and transfer tokens while incorporating a utility for redeeming tokens for in-game items. The contract was created as part of the [Metacrafter's ETH + AVAX Proof: Intermediate EVM Course](https://metacrafters.io/).

---

## **Features**
1. **ERC20 Compliance:** Implements standard ERC20 token operations like transfer, mint, and burn.
2. **Ownership-Controlled Minting:** Only the contract owner can mint new tokens.
3. **Item Redemption System:** Users can redeem tokens for in-game items with pre-set prices.
4. **Dynamic Item Management:** Owners can add or update the pricing of items.
5. **Secure Balance Management:** Users can check their token balances at any time.

---

## **Getting Started**

### **Requirements**
- **Remix IDE:** [Remix](https://remix.ethereum.org/) is an online Solidity IDE used to compile and deploy the contract.
- **MetaMask:** Install the MetaMask wallet and connect to the **Avalanche Fuji Testnet**.

---

### **Steps to Execute**
1. **Download the Smart Contract**  
   Download the `DegenGamingToken.sol` file from this repository.

2. **Open the Contract in Remix**  
   - Navigate to [Remix](https://remix.ethereum.org/).
   - Import the `DegenGamingToken.sol` file using "Open a File from your File System."

3. **Compile the Contract**  
   - Go to the **Solidity Compiler** tab.
   - Set the compiler version to **0.8.26**.
   - Ensure the EVM version is set to **Shanghai**.
   - Click **Compile DegenToken.sol**.

4. **Deploy the Contract**  
   - Switch to the **Deploy & Run Transactions** tab.
   - Select **Injected Provider - MetaMask** as the environment.
   - Deploy the contract on the **Fuji Testnet** or your desired Avalanche network.

5. **Interact with the Contract**  
   - **Mint Tokens:** The owner can call `mintTokens(address recipient, uint256 amount)`.
   - **Burn Tokens:** Any token holder can call `burnTokens(uint256 amount)` to destroy their tokens.
   - **Redeem Items:** Call `redeemItem(uint256 itemId)` to exchange tokens for an item.
   - **Add/Update Items:** Owners can call `addOrUpdateItem(uint256 itemId, uint256 price)` to manage item prices.
   - **Check Balance:** Use `balanceOfUser(address user)` to view token balances.

---

## **Functions Overview**

### **Owner-Only Functions**
- **`mintTokens(address recipient, uint256 amount)`**  
  Allows the owner to mint tokens for any address.

- **`addOrUpdateItem(uint256 itemId, uint256 price)`**  
  Enables the owner to add or update item prices in the redemption system.

### **Public Functions**
- **`redeemItem(uint256 itemId)`**  
  Redeems tokens for a specified item based on its price.

- **`burnTokens(uint256 amount)`**  
  Burns a specified number of tokens from the user's balance.

- **`balanceOfUser(address user)`**  
  Returns the token balance of the specified address.

---

## **Smart Contract Design**

### **Mappings**
- `itemPrices`: Maps item IDs to their corresponding token prices.

### **Events**
- `Redeemed`: Emitted when a user redeems an item.
- `ItemAdded`: Emitted when the owner adds or updates an item.

---

## **Course Context**
This contract was created as part of the **Metacrafters ETH + AVAX Proof: Intermediate EVM Course**. The course covers advanced EVM concepts and Avalanche blockchain development. Learn more about the course [here](https://metacrafters.io/).

---

## Authors
- [@AngeloCoder27](https://github.com/AngeloCoder27)
