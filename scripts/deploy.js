// hre: HardHat Runtime Environment
const hre = require ("hardhat");
const main = async() => {
    const ToDoList = await hre.ethers.getContractFactory("ToDoList");
    const toDoList = await ToDoList.deploy()

    await toDoList.deployed()
    
// to call a function
    // await toDoList.addTask("Go for Gold!");
    console.log("ToDoList deployed to:", toDoList.address);
}

main()