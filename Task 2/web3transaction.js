const Web3 = require('web3');

const web3 = new Web3(
  "https://eth-goerli.blastapi.io/88d523a4-f297-42a5-8000-93a3ddded12e"
);

const accountFrom = {
  privateKey:
    "64aab499f0ef28e6de7fe6402ea4bec10d2c0917f36138dddf16d29dd69fc437",
  address: "0x1338af401f9Fbe8A410BB7227dE067254e657Fb3",
};
const addressTo = "0x892e937F351e692484B2e7939214Cd62632B8216"; // Change addressTo

// 3. Create send function
const send = async () => {
  console.log(
    `Attempting to send transaction from ${accountFrom.address} to ${addressTo}`
  );

  // 4. Sign tx with PK
  const createTransaction = await web3.eth.accounts.signTransaction(
    {
      gas: 21000,
      to: addressTo,
      value: web3.utils.toWei("0.00001", "ether"),
    },
    accountFrom.privateKey
  );

  // 5. Send tx and wait for receipt
  const createReceipt = await web3.eth.sendSignedTransaction(
    createTransaction.rawTransaction
  );
  console.log(
    `Transaction successful with hash: ${createReceipt.transactionHash}`
  );
};

// 6. Call send function
send();
