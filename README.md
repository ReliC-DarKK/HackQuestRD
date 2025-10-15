# HackQuestRD

# 

rformance Recorder – Smart Contract

![Solidity](https://img.shields.io/badge/Solidity-0.8.0+-blue.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)
![Network](https://img.shields.io/badge/Deployed%20On-Flow%20EVM%20Testnet-purple.svg)

---

## Overview

The **Performance Recorder** is a simple yet powerful **Solidity smart contract** deployed on the **Flow EVM Testnet**.  
It enables decentralized, transparent, and immutable recording of user performance data — eliminating the need for centralized data management systems.

This project demonstrates how performance metrics (like scores, achievements, or progress data) can be stored securely on-chain, ensuring **trust**, **transparency**, and **data integrity**.

---

## Project Idea

In most traditional platforms, user performance data is stored on centralized databases, which are vulnerable to:
- Unauthorized modifications  
- Single-point failures  
- Lack of public transparency  

This project solves those issues by bringing performance tracking **on-chain** using blockchain technology.  

**Use Cases:**
- Educational dApps (tracking grades or course progress)
- Employee or contributor performance tracking
- Decentralized reputation systems
- Gamified systems with on-chain scores or achievements
- DAOs and Web3 platforms needing verifiable user performance data

---

## Features

-  Records performance data for each unique user address  
-  Retrieves user performance from blockchain storage  
-  Immutable and verifiable data  
-  Gas-efficient (no external imports or complex dependencies)  
-  Deployable on any EVM-compatible blockchain (tested on Flow EVM)

---

## Technologies Used

| Technology | Purpose |
|-------------|----------|
| **Solidity (v0.8.x)** | Smart contract language |
| **Remix IDE** | Development and deployment |
| **MetaMask** | Wallet connection & transaction signing |
| **Flow EVM Testnet** | Deployment network |

---

## Contract Address
0x9062dCBc162623E0b468C60BA891bF4CBdffC42A
    function getPerformance(address user) public view returns (uint256) {
        return performanceData[user];
    }
}
