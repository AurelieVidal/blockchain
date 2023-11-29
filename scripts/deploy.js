async function main() {
  const secret = await hre.ethers.deployContract("Secret");

  await secret.deployed();

  console.log(
    `Secret deployed to ${secret.target}`
  );
}