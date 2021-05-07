pragma solidity >=0.4.22 <0.9.0;
//no need to copy and paste other contracts do this to call them!!
//How to interact with another contract using INTERFACE 
interface ICounter {                                //declaring interface
    function count() external view returns(uint);  //defining functio count dont 4get semi colon
    function increment() external;                //calling the increment funct
}
//taking in the address of the counter.sol contract make it external 
contract MyContract {
    function incrementContract(address _counter) external {
        ICounter(_counter).increment(); //Icounter at counter address is how to call the counter contract
    }
    
    function getCount(address _counter) external view returns (uint) {
        return ICounter(_counter).count();
    }
}

//MohamGoham demo's trying to teach young black kids in my neighborhood by making simple smart contracts 