
// CRUD Operations

// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

contract contract1 {

    contract2[] public arrayofContract;

    function calling()
    public 
    {
        contract2 b = new contract2();
        b.testing();
        arrayofContract.push(b);
    }
    
}

contract contract2 {
    function testing() 
    public 
    pure
    returns (string memory){
        return "Hello";
    }
}
