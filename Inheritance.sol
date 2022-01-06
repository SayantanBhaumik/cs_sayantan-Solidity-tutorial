//Inheritance and interaction of one smart conract from another smart contract
//SPDX-License-Identifier:MIT;

pragma solidity ^0.6.0;

contract Ownable{
    address owner;
    constructor() public{
        owner=msg.sender;
    }
    modifier onlyOwners(){
    require(msg.sender==owner,"only owner please");
    _;
}

contract SecretVault{
     string secret;
      constructor(string memory _secret) public{
           secret = _secret;
      }
      
      //modifiers (decorators in oops) attched to function
function getSecret() public onlyOwners view returns (string memory) {
        return secret;
    }
}

//inhertance
contract Mycontract is Ownable{
    address secretVault;
    constructor(string memory _secret) public{
        SecretVault _secretVault = new SecretVault(_secret);
        secretVault = address(_secretVault);
        //caling the constructor method of base smart contract
        super;
        }

        function getSecret() public onlyOwners view returns (string memory) {
            SecretVault _secretVault = SecretVault(secretVault);
            //calling function of another smart contract from this smart contract
            return _secretVault.getSecret();
    }

 }
}

    
    
