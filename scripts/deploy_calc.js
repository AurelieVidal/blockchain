async function main() {

    const calculatrice = await hre.ethers.deployContract("Calculatrice");

    await calculatrice.deployed();
  
    console.log(
      `Secret deployed to ${calculatrice.target}`
      
    );

}

