pragma solidity ^0.6.0;

contract Mycontract{

    //Events are used to inform external users that something happened on the blockchain
    event senderLogger(address);
    event valueLogger(uint256);

    address private owner;

    constructor () public {
        owner=msg.sender;
    }

    //we are using modifier to restric iteraction only with owner of the smart contract
    modifier onlyOwner{
        require(msg.sender==owner,"not an owner");
        //function execution
        _ ;
    }
    //for checking the valid amount of ether sent to the contract
    modifier validAmount{
        require(msg.value >= 1 ether,"not sufficient amount");
        _ ;
    }
    
    //fallback function with payable modifier 
    //no function identifier
    //accepts no argument
    //used to receive ethers without additional data to smart contract

    function() payable onlyOwner validAmount  {
        senderLogger(msg.sender);
        valueLogger(msg.value);

    }
}
