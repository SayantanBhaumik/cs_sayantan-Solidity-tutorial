//SPDX-License-Identifier:MIT;

pragma solidity ^0.6.0;

contract MyMappings{

    //mapping data structure
    // mapping(key=>value)
    //used for using smart contract as database

    mapping(uint=>string) public names;

    // initialises the names state variables
    //called once when smart contract is compiled
    constructor() public {
        names[1]="Sayantan";
        names[2]="Sabita";
        names[3]="Jayanta";
    }

     mapping(uint=>Books) public books;

    //use of complex custom data structure struct
    struct Books{

        //block scope variables are indexed
        string title;
        string author;
    }
    
    //function to add data to Books struct
    function addBookdata(string memory _title,string memory _author) public{

        //creating object of Books
        books[1]= Books(_title,_author);

    }

    //nesting of mapping
    //we will store books according to public key
    mapping(address=>mapping(uint=>Books)) public booklist;

    function addBooklist(uint _id,string memory _title,string memory _author) public {
        
        //msg.sender captures the address of person who is connecting to the smart contract
        booklist[msg.sender][_id]=Books(_title,_author);
    }


}
