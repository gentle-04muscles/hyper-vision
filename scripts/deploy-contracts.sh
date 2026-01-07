#!/usr/bin/env bash
set -e

# Hyper Vision — Contract Deployment Script (Foundry)
# Supports deployment to Base Sepolia and Base Mainnet.

if [ -z "$PRIVATE_KEY" ]; then
  echo "❌ PRIVATE_KEY not set"
  exit 1
fi

if [ -z "$NETWORK" ]; then
  echo "❌ NETWORK not set (base-sepolia | base-mainnet)"
  exit 1
fi

case "$NETWORK" in
  base-sepolia)
    RPC_URL="https://sepolia.base.org"
    CHAIN_ID="84532"
    ;;
  base-mainnet)
    RPC_URL="https://mainnet.base.org"
    CHAIN_ID="8453"
    ;;
  *)
    echo "❌ Unknown NETWORK: $NETWORK"
    exit 1
    ;;
esac

CONTRACT="src/HyperVisionContract.sol:HyperVision"

echo "🚀 Deploying contract to $NETWORK"
echo "RPC URL: $RPC_URL"
echo "Chain ID: $CHAIN_ID"
echo "Contract: $CONTRACT"

forge create \
  --rpc-url "$RPC_URL" \
  --private-key "$PRIVATE_KEY" \
  --chain-id "$CHAIN_ID" \
  "$CONTRACT"

echo "✅ Deployment finished"
