const { ethers } = require("ethers");

async function main() {
  // Configuring the connection to an Ethereum node
  const network = process.env.ETHEREUM_NETWORK;
  const provider = new ethers.providers.InfuraProvider(
    network,
    process.env.INFURA_API_KEY
  );
  // Creating a signing account from a private key
  const signer = new ethers.Wallet(process.env.SIGNER_PRIVATE_KEY, provider);

  // Creating and sending the transaction object
  const tx = await signer.sendTransaction({
    to: "0x892e937F351e692484B2e7939214Cd62632B8216",
    value: ethers.utils.parseUnits("0.00001", "ether"),
  });

  console.log("Mining transaction...");
  console.log(`https://${network}.etherscan.io/tx/${tx.hash}`);
  // Waiting for the transaction to be mined
  const receipt = await tx.wait();
  // The transaction is now on chain!
  console.log(`Mined in block ${receipt.blockNumber}`);
}

require("dotenv").config();
main();
