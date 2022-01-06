//SPDX-License-Identifier:MIT;

//solidity version
pragma solidity ^0.6.0;

contract MyConditionals{

    //address is a datatype
    address public owner;

    //constructor is initialiser which is called once when smart contract is deployed 
    constructor() public {
        owner=msg.sender;
    }
    
    // 1-d static array of uint datatype
    uint[] public uintArray = [1,2,3,4,5,6,7,8];
    
    function countEvennumbers() public view returns(uint){
        uint count = 0 ;
        
    // loop
    for(uint i=0; i< uintArray.length; i++){
        if (isEven(uintArray[i])){
            count++;
        }
        return count;
    }
    }

    function isEven(uint _number) public view returns(bool){
        if (_number%2 == 0){
            return true;
        }
        else{
            return false;
        }
    }

    function isOwner() public view returns(bool){
        return (msg.sender==owner);
    }

}
