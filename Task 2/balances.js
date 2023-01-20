const Web3 = require('web3');

const web3 = new Web3(
  "https://eth-goerli.blastapi.io/88d523a4-f297-42a5-8000-93a3ddded12e"
);

const addressFrom = "0x1338af401f9Fbe8A410BB7227dE067254e657Fb3";
const addressTo = "0x892e937F351e692484B2e7939214Cd62632B8216";

const balance = async () => {
  const balanceFrom = web3.utils.fromWei(
    await web3.eth.getBalance(addressFrom),
    "ether"
  );
  const balanceTo = web3.utils.fromWei(
    await web3.eth.getBalance(addressTo),
    "ether"
  );

  console.log(`The balance of ${addressFrom} is: ${balanceFrom} ETH`);
  console.log(`The balance of ${addressTo} is: ${balanceTo} ETH`);
};

balance();
