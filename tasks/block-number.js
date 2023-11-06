const { task } = require("hardhat/config")

// to define a task, you need the name and description as shown below
task("block-number", "Prints the current block number").setAction(
    // const blockTask = async function() => {}
    // async function blockTask() {}
    // they are basically d same thing
    async (taskArgs, hre) => {
        const blockNumber = await hre.ethers.provider.getBlockNumber()
        console.log(`Current block number: ${blockNumber}`)
    },
)

module.exports = {}
