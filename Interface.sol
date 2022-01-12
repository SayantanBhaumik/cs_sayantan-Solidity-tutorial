ragma solidity ^0.5.0;

//interface is almost like abstract contract
//all functions are abstract function
//abstract functions are of external type
//cant have state variables
//can have enum,struct
interface MyContract {
    function getResult() external view returns(fixed);
    enum Type { hi,bye}  
    Type type;

}

contract DerivedContract {
    constructor() public {}
    function getResult() external view returns(fixed){
        fixed x = 4.6;
        fixed y = 6.1;
        fixed z = x * y ;
        return z;
        string memory type = Mycontract.hi;
        
    }
}
