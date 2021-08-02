- Import NFT.sol, ownable.sol and dashboard.sol into the same directory in remix. 

- Open NFT.sol

- Change the wallet address in NFT.sol to one in your wallet for the 123NFT fee to be paid.

- Compile NFT.sol

- Compile dashboard.sol (You may also need to compile ownable.sol)

- Open and Deploy a new contract with NFT.sol

- Open dashboard.sol (this interface allows you to easily view only the required features of NFT.sol)

- Open dashboard.sol and deploy it at the address of the NFT contract - the token _ID is always 0

- When you mint the one and only '0' token, you can enter an alphanumerical string and symbol that live on the blockchain, and a uri where the actual NFT data is stored. At the same time, if the minter wants royalties, they have to enter a valid wallet address and royalty amount in wei. If the address is entered wrong at this point, there is no way to change it later.

- Minting the one and only token for the contract is irreversible and cannot be repeated. We chose to do this so each item has it's own contract and 1 token only.

- Use contractInvest to load the contract in wei to cover the transferOwnership function fees. It is sugested the new buyer 'charges' the account for the royalty fees, because once the contract has changed hands, any remaining wei now belong to the buyer. (The seller has to pay the gas fees for the ownership transfer, because they are the ones initiating it)

- The contract balance can be checked with the contractHoldings button.

- The contract balance can be withdrawn to the current contract owner using the holdingsTransfer button.


