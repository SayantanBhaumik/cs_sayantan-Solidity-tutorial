/function overloading
//same function name with different number of arguments /data type within same scope
pragma solidity ^ 0.6.0;

contract FunctionOverloading{

    //function with 2 arguments
    function sum(uint256 x,uint256 y ) public pure returns (uint256 z){
        return z = x + y ;
    }
    
    //same function name
    //datatype/number of parameters are different
    //function with 3 arguments
    function sum (uint256 x, uint256 y , uint256 w)public pure returns (uint z){
        return z = x + y + z;
    }

    function getSum2() public pure returns (uint256){
        return sum(3,4);
    }

    function getSum3() public pure returns(uint256){
        return sum(3,4,5);
    }

}
