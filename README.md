# NFT-Minting-Platform

A decentralized NFT minting platform built on Ethereum using Solidity and Hardhat.

## Project Overview

SkillNFT is a full-stack Web3 application that allows users to mint ERC-721 NFTs on the Ethereum blockchain. It includes live preview, MetaMask wallet integration, and NFT gallery.

## Features

- ERC-721 Smart Contract with minting functionality
- Live NFT Preview using HTML5 Canvas
- MetaMask Wallet Integration
- Free Mint (Demo Mode) and Paid Mint
- Real-time Minted NFTs Gallery
- Responsive and Modern UI
- Deployed on Hardhat Local Network

## Tech Stack

- Blockchain: Solidity ^0.8.20, ERC-721
- Framework: Hardhat
- Frontend: HTML, CSS, JavaScript, Ethers.js
- Wallet: MetaMask
- Tools: Node.js, npm

## Project Structure

NFT-Minting-Platform/
├── contracts/
│   └── NFTMint.sol
├── scripts/
│   └── deploy.js
├── screenshots/
├── index.html
├── hardhat.config.js
├── package.json
└── README.md

## How to Run Locally

1. Install dependencies:
   npm install

2. Compile the smart contract:
   npx hardhat compile

3. Start local blockchain (Terminal 1):
   npx hardhat node

4. Deploy contract (Terminal 2):
   npx hardhat run scripts/deploy.js --network localhost

5. Open index.html in browser and connect MetaMask.

## Internship Details

Project: NFT Minting Platform  
Intern: Shashank  
Company: SkillInfytech IT Solutions Pvt. Ltd.  
Year: 2026

Made as part of Blockchain Internship.
