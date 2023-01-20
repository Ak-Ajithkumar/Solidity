//Import packages
const fs = require("fs");
const solc = require("solc");

//load the contracts from the file to be compiled
const source = fs.readFileSync("Increment.sol", "utf8");

//object for compiler -> define languages ,settings
const input = {
  language: "Solidity",
  sources: {
    "Increment.sol": {
      content: source,
    },
  },
  settings: {
    outputSelection: {
      "*": {
        "*": ["*"],
      },
    },
  },
};

const tempFile = JSON.parse(solc.compile(JSON.stringify(input)));
const contractFile = tempFile.contracts["Increment.sol"]["Increment"];

if (contractFile) {
  console.log(contractFile);
}

module.exports = contractFile;
