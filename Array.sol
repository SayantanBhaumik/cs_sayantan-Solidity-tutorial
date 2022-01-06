//SPDX-License-Identifier: MIT;

pragma solidity ^0.6.0;

contract MyArray {
    //Array
    // uint data type
    uint[] public uintArray = [1,2,3,4];

    //string data type 1-d array
    string [] public stringArray = ["a","b","c","d"];

    //without initialization
    string [] public stringArray2;

    // 2-d array 
    //array of arrays
    uint[][] public uint2Darray = [[1,2,3],[4,5,6]];

    //function to push values in stringArray2
    function addValue(string memory _value) public {
        stringArray2.push(_value);
    }
    
    //function to count the length
    //view function,no state change
    function count() public view returns(uint){
        return stringArray2.length;

    }

    
    
}
