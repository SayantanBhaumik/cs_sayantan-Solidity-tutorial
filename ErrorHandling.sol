pragma solidity ^0.8.0;

contract Business {
    address public seller;

    modifier onlySeller(){
        require(msg.sender==seller, 'Unauthorised access');
        _;
    }

    function sell(uint256 _amount) public payable onlySeller{
        if (_amount < 1 ether){
            revert();
        }
    }
}
