async function main() {
  console.log("Deploying NFTMint contract...");

  const [deployer] = await ethers.getSigners();
  console.log("Deploying with account:", deployer.address);
  console.log("Account balance:", (await deployer.getBalance()).toString());

  const NFTMint = await ethers.getContractFactory("NFTMint");
  const nftMint = await NFTMint.deploy();

  await nftMint.deployed();

  console.log("✅ NFTMint contract deployed to:", nftMint.address);
  console.log("📸 SCREENSHOT THIS ADDRESS!");
  console.log("\nContract Details:");
  console.log("  Name: SkillNFT");
  console.log("  Symbol: SNFT");
  console.log("  Max Supply: 100");
  console.log("  Mint Price: 0.01 ETH");
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
