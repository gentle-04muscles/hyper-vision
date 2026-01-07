# Hyper Vision (Built for Base)

Hyper Vision is a powerful, read-only tool designed to help developers interact with the Base Sepolia network. It provides a fast way to validate network configuration, inspect wallet balances, and confirm contract deployments, all while ensuring no state changes occur on the blockchain.

---

## Features

With Hyper Vision, you can:
- Confirm network connectivity (Base Sepolia, chainId: 84532)  
- Check wallet balances and transaction history  
- Inspect deployed contracts on Base Sepolia using verified Basescan links  
- View block and gas data to understand network usage  

All interactions are strictly read-only, ensuring a non-intrusive experience.

---

## How It Works

Hyper Vision connects to Coinbase Wallet via the Coinbase Wallet SDK and uses the viem library to query the Base Sepolia RPC endpoint. It retrieves blockchain data such as wallet balances, transaction counts, and block information, presenting direct links to Basescan for verification.

No transactions are signed or broadcast during usage.

---

## Repository Layout

- **app/hyper-vision.ts**  
  Main script to connect to Coinbase Wallet and interact with Base Sepolia RPC for onchain data.

- **contracts/**  
  Solidity contracts deployed on Base Sepolia for testnet validation:
  - `mapping.sol`  
  - `imports.sol`  

- **scripts/**  
  Utility scripts for contract deployment and testing:
  - `deploy-contracts.sh`  
  - `test-addresses.json`  

- **docs/**  
  Documentation for understanding the architecture and usage:
  - `usage.md`  
  - `testnet-validation.md`  

- **package.json**  
  Dependency manifest with all project dependencies.

- **README.md**  
  This documentation file.

---

## Supported Network

Base Sepolia  
chainId (decimal): 84532  
Explorer: [sepolia.basescan.org](https://sepolia.basescan.org)

---

## Dependencies

This project relies on several essential dependencies:
- **Coinbase Wallet SDK** for wallet integration  
- **Viem** for RPC communication with Base Sepolia  
- **Web3.js** for additional Ethereum protocol functions  
- **Ethers.js** for enhanced interaction with the Ethereum blockchain  
- **Axios** for HTTP requests  
- **Coinbase AgentKit** for managing wallet interactions  

---

## Testnet Deployment (Base Sepolia)

The following contracts have been deployed on Base Sepolia for validation:

Network: Base Sepolia  
chainId (decimal): 84532  
Explorer: [sepolia.basescan.org](https://sepolia.basescan.org)

Contract mapping.sol address:  
0xa4eD0496B2BDBEc411e9BBe8143FBBf7d09ab14A

Deployment and verification:
- [Deployment Link](https://sepolia.basescan.org/address/0xa4eD0496B2BDBEc411e9BBe8143FBBf7d09ab14A)
- [Code Verification](https://sepolia.basescan.org/0xa4eD0496B2BDBEc411e9BBe8143FBBf7d09ab14A/0#code)

Contract imports.sol address:  
0x2fd5B51b8C67Ca8B84497c47c051c1Bd185D5A8B

Deployment and verification:
- [Deployment Link](https://sepolia.basescan.org/address/0x2fd5B51b8C67Ca8B84497c47c051c1Bd185D5A8B)
- [Code Verification](https://sepolia.basescan.org/0x2fd5B51b8C67Ca8B84497c47c051c1Bd185D5A8B/0#code)

These contracts are deployed for testing and to ensure proper network configuration before moving to Mainnet.

---

## Author socials

GitHub: [gentle-04muscles](https://github.com/gentle-04muscles)  

Email: gentle-04muscles@icloud.com

X: [tikininho58](https://x.com/tikininho58)
