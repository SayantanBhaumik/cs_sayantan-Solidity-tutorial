pragma solidity 0.6.0;

contract BaseContract1{
    //allows an inheriting contract to override its behavior
    function foo()  virtual public{

    }
}

contract BaseContract2{
    //allows an inheriting contract to override its behavior
    function foo() virtual public{

    }
}

//multiple inheritances
contract DerivedContract is BaseContract1,BaseContract2{
    //overrides that base functions 
    function foo () override(BaseContract2,BaseContract2) public{

    }
}
