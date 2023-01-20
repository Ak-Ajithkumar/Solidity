const contractFile = require("./compile");

const Web3 = require("web3");

const web3 = new Web3(
  "https://eth-goerli.blastapi.io/88d523a4-f297-42a5-8000-93a3ddded12e"
);

// 3. Create address variables
const accountFrom = {
  privateKey: "64aab499f0ef28e6de7fe6402ea4bec10d2c0917f36138dddf16d29dd69fc437",
  address: "0x892e937F351e692484B2e7939214Cd62632B8216",
};

// 4. Get the bytecode and API
const bytecode = contractFile.evm.bytecode.object;
const abi = contractFile.abi;

// 5. Create deploy function
const deploy = async () => {
  console.log(`Attempting to deploy from account ${accountFrom.address}`);

  // 6. Create contract instance
  const Increment = new web3.eth.Contract(abi);

  // 7. Create constructor tx
  const IncrementTx = Increment.deploy({
    data: bytecode,
    arguments: [5],
  });

  // 8. Sign transacation and send
  const createTransaction = await web3.eth.accounts.signTransaction(
    {
      data: IncrementTx.encodeABI(),
      gas: await IncrementTx.estimateGas(),
    },
    accountFrom.privateKey
  );

  // 9. Send tx and wait for receipt
  const createReceipt = await web3.eth.sendSignedTransaction(
    createTransaction.rawTransaction
  );
  console.log(`Contract deployed at address: ${createReceipt.contractAddress}`);
};

// 10. Call deploy function
deploy();
