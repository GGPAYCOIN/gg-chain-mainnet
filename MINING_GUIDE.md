# 💎 GGPAY Mainnet - Independent L1 PoW Blockchain

Welcome to the official repository for **GGPAY**, an independent Layer-1 Proof of Work (PoW) blockchain ecosystem. 
Unlike standard Ethereum forks, GGPAY has a custom core engine with a **Bitcoin-like Tokenomics model**:
- **Max Supply:** ~21 Million Coins
- **Mining Plan:** 40 Years
- **Halving Cycle:** Block rewards halve every 4 years.

## 🌐 Network Details (For MetaMask)
- **Network Name:** GGPAY Mainnet
- **RPC URL:** `https://rpc.gghyper.net`
- **Chain ID:** `2121216`
- **Currency Symbol:** `GGPAY`

---

## ⛏️ How to Mine GGPAY

Because GGPAY uses custom tokenomics and halving rules, you cannot use standard Geth. You must compile the GGPAY custom node software. Follow these steps on your Linux/Ubuntu terminal:

### Step 1: Install Dependencies & Download Source
```bash
sudo apt update
sudo apt install -y golang git make gcc build-essential python3
git clone -b v1.10.26 [https://github.com/ethereum/go-ethereum.git](https://github.com/ethereum/go-ethereum.git)
cd go-ethereum
Step 2: Apply GGPAY Tokenomics Patch & Build Engine
Run this automated script to inject the GGPAY halving rules into the core engine and compile your node:
cat << 'EOF' > patch.py
import re
file_path = 'consensus/ethash/consensus.go'
with open(file_path, 'r') as f: content = f.read()
custom_logic = """
        // GGPAY CUSTOM TOKENOMICS (Bitcoin Model)
        halvingInterval := uint64(8409600)
        halvings := header.Number.Uint64() / halvingInterval
        baseGGPAY := new(big.Int).Mul(big.NewInt(125), big.NewInt(1e16))
        var ggpayReward *big.Int
        if halvings >= 10 { ggpayReward = big.NewInt(0) } else { ggpayReward = new(big.Int).Rsh(baseGGPAY, uint(halvings)) }
        state.AddBalance(header.Coinbase, ggpayReward)
"""
new_content = re.sub(r'state\.AddBalance\(header\.Coinbase,\s*[^)]+\)', custom_logic.strip(), content)
with open(file_path, 'w') as f: f.write(new_content)
EOF

python3 patch.py
make all
sudo cp build/bin/geth /usr/local/bin/ggpay-geth
cd ~

Step 3: Initialize the Genesis Block
Download the genesis.json file from this repository to your system, then initialize:
ggpay-geth --datadir ./ggpay_miner_data init genesis.json

Step 4: Start Mining!
Connect to the main network and start mining.

⚠️ IMPORTANT: Replace YOUR_METAMASK_WALLET_ADDRESS with your actual 0x... address!
ggpay-geth --datadir ./ggpay_miner_data --networkid 2121216 --bootnodes "enode://30ac88b550c507bac07a284c10251b957c55c2f9e04e1ffad7ea8adb6c83ff585652e49a2ee29c711638b63a6b771d3409ef3a22d5d3fc97dfa7f39176073f69@66.135.29.218:30303" --mine --miner.threads 1 --miner.etherbase "YOUR_METAMASK_WALLET_ADDRESS"

Congratulations! You are now mining GGPAY and securing the network. 🚀
