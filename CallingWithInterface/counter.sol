pragma solidity >=0.4.22 <0.9.0;
//simple contract that counts with an increment we will call this contract in interface.sol
contract Counter {
    uint public count;

    function increment() external {}
}
