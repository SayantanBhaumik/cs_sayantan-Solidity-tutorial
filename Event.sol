//Events are used for return values from the transaction and as a cheap data storage in transaction’s log 
//Events are used to inform external users that something happened on the blockchain.
//Smart contracts themselves cannot listen to any events.
//Solidity events are interfaces with Ethereum Virtual Machine logging functionality.
//two types of Solidity event parameters: indexed and not indexed

pragma solidity ^0.6.0;

contract MoneyTransfer{

    // indexed parameters for logged events will allows to search for these events using the indexed parameters as filters.
    event moneySent(address indexed _from,address indexed _to , uint256 _amount);
    mapping (address=>uint256) public moneyBalance;

    address public owner;
    constructor() public {
        owner=msg.sender;
        moneyBalance[msg.sender]=50;
    }

    modifier onlySender {
        require(msg.sender==owner,"not an owner");
        _;
    }
    modifier validAmount {
        require(_amount>=2 , "not valid amount");
    }

    function sendMoney(address _to , uint _amount) onlySender validAmount public returns(bool) {
        moneyBalance[msg.sender] -= _amount;
        moneyBalance[_to] += _amount;

        emit moneySent(msg.sender,_to,_amount);
        return true;


    }
