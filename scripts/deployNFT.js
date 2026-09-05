async function main() {
  console.log("Deploying NFTMint contract...");

  const [deployer] = await ethers.getSigners();
  console.log("Deploying with account:", deployer.address);
  console.log("Account balance:", (await ethers.provider.getBalance(deployer.address)).toString());

  const NFTMint = await ethers.getContractFactory("NFTMint");
  const nftMint = await NFTMint.deploy();

  await nftMint.waitForDeployment();

  const address = await nftMint.getAddress();
  console.log("✅ NFTMint contract deployed to:", address);
  console.log("📸 Take a screenshot of this address!");
  console.log("📋 Copy this address into index.html where it says PASTE_NFT_CONTRACT_ADDRESS_HERE");
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
