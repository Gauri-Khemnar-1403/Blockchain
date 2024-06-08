require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.24",
  networks: {
    sepolia: {
      url:`https://eth-sepolia.g.alchemy.com/v2/739hGyhokMbCFsJyUSwIHboNnr07UZJv`,
      accounts: [`0901d934a4839a25439675ba6e12faadcfbce06c890e8f4980c787e826912014`],
    }
  },
  etherscan:{
    apiKey:{

      sepolia:`739hGyhokMbCFsJyUSwIHboNnr07UZJv`
  
    }
  }
};
