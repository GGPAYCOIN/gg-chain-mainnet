# ⛏️ Mining & Node Setup Guide - GG HyperNet

Welcome to the GG HyperNet mining guide. Our network uses a hybrid consensus model: **70% Proof-of-Work (PoW)** and **30% Proof-of-Stake (PoS)** based on the Scrypt algorithm.

---

## 🌐 Network Information
Before you start, add GG HyperNet to your wallet or node configuration:
- **Network Name:** GG HyperNet Mainnet
- **RPC URL:** https://gghyper.net/rpc/
- **Chain ID:** 2026
- **Currency Symbol:** GGPAY
- **Block Explorer:** https://gghyper.net

---

## 🚀 Step 1: Requirements
- **OS:** Ubuntu 22.04 LTS (Recommended)
- **CPU:** 2+ Cores
- **RAM:** 4GB+
- **Storage:** 50GB SSD (Increases as the chain grows)

## 📥 Step 2: Download Genesis File
Every node must start with our official genesis block. Download it from this repository:
```bash
wget [https://raw.githubusercontent.com/GGPAYCOIN/gg-chain-mainnet/main/network/genesis.json](https://raw.githubusercontent.com/GGPAYCOIN/gg-chain-mainnet/main/network/genesis.json)

enode://5b6a99801cb71badf990c6be3de3d9eb5b5dc111d057edd0f6bc28b0476af26a5f9274d2f1511ba003d397932da318e489f7d2bcdc96315f33edfcd032897b13@84.46.240.62:30301

⚙️ Step 3: Node Initialization
​Initialize your local data directory with the genesis file: geth --datadir ./node_data init genesis.json

🏗️ Step 4: geth --networkid 2026 \
--bootnodes "enode://5b6a99801cb71badf990c6be3de3d9eb5b5dc111d057edd0f6bc28b0476af26a5f9274d2f1511ba003d397932da318e489f7d2bcdc96315f33edfcd032897b13@84.46.240.62:30301" \
--http --http.addr 0.0.0.0 \
--http.corsdomain "*" \
--http.vhosts "*" \
--http.api eth,net,web3,miner



⛏️ Step 5: Start Mining (PoW)
​Once your node is fully synced, you can start mining using your CPU.
​CPU Mining Command:geth --datadir ./node_data --mine --miner.threads 2 --miner.etherbase "YOUR_WALLET_ADDRESS"
Note: Replace YOUR_WALLET_ADDRESS with your GGPAY address to receive block rewards.

​💎 Step 6: Staking (PoS)
​To participate in the 30% PoS rewards:
​Hold GGPAY in your node's wallet.
​Enable the staking module in your node configuration.
​Maintain 24/7 uptime to secure the network and earn rewards.
