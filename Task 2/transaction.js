const { ethers } = require("ethers");
const fetch = require('node-fetch');

async function main() {
  let privateKey = "64aab499f0ef28e6de7fe6402ea4bec10d2c0917f36138dddf16d29dd69fc437"
  let wallet = new ethers.Wallet(privateKey);

  console.log("Using wallet address " + wallet.address);

  let transaction = {
    to: "0x1338af401f9Fbe8A410BB7227dE067254e657Fb3",
    value: ethers.utils.parseEther("1"),
    gasLimit: "21000",
    maxPriorityFeePerGas: ethers.utils.parseUnits("5", "gwei"),
    maxFeePerGas: ethers.utils.parseUnits("20", "gwei"),
    nonce: 1,
    type: 2,
    chainId: 3,
  };

  // sign and serialize the transaction
  let rawTransaction = await wallet
    .signTransaction(transaction)
    .then(ethers.utils.serializeTransaction(transaction));

  // print the raw transaction hash
  console.log("Raw txhash string " + rawTransaction);

  // pass the raw transaction hash to the "eth_sendRawTransaction" endpoint
  let gethProxy = await fetch(
    `https://api-ropsten.etherscan.io/api?module=proxy&action=eth_sendRawTransaction&hex=${rawTransaction}&apikey=YourApiKeyToken`
  );
  let response = await gethProxy.json();

  console.log(response);
}
main();
