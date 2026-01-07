# Hyper Vision — Base Sepolia Testnet Validation

This document captures the validation steps and results for **Hyper Vision** deployed on **Base Sepolia**.

---

## Testnet Details

- **Network**: Base Sepolia
- **Chain ID**: 84532
- **RPC URL**: https://sepolia.base.org
- **Explorer**: https://sepolia.basescan.org

---

## Validation Steps

### Step 1 — Configuration Check

- [ ] Ensure that **Base Sepolia** is correctly configured in `config/base.networks.json`.
- [ ] Verify the **RPC URL** for Base Sepolia (`https://sepolia.base.org`) is correctly set.
- [ ] Confirm that **Chain ID** is `84532`.

### Step 2 — RPC Connectivity Test

- [ ] Fetch the **latest block number** from the RPC endpoint.
- [ ] Ensure the block number increments correctly after a brief delay.
- [ ] If there is an issue, verify the fallback RPC URL (`https://base-sepolia-rpc.publicnode.com`).

### Step 3 — Read-only Probes

Using addresses from `scripts/test-addresses.json`:

- [ ] Check **ETH balance** for `exampleEOA` and ensure it returns a valid value.
- [ ] Verify **contract code** for `exampleContract` and check for bytecode.
- [ ] Ensure that querying the **zero address** returns a zero balance and querying the **burn address** does not cause errors.

### Step 4 — Explorer Verification

- [ ] Open **exampleEOA** in BaseScan Sepolia to ensure the address resolves correctly.
- [ ] Ensure the block height displayed in the **BaseScan Explorer** matches the RPC results.

---

## Final Results

- [ ] **Validation completed successfully** on Base Sepolia.
- [ ] Ready for deployment to **Base Mainnet** after final verification.

_Last updated: initial scaffold_
