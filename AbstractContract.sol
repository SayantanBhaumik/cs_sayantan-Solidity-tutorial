pragma solidity ^0.6.0;

//Abstract contract
contract AbstractContract{

    //Abstract function
    //No implementataion
    function getResult() public view returns (uint256);
}

contract BaseContract is AbstractContract {

    //implementataion of abstract function in base contract
    function getResult() public view returns(uint256){
        uint16  a = 8;
        uint16  b =9;
        uint256  c = a * b ;
        return c;
    }
}
