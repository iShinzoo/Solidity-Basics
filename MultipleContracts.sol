// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

// interactig between 2 contacts in same file and diffrent file
// for diffrent file use import statement

import "Basic.sol"; // now you can use it as we use of same file 

// from github or any other link 
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20{
    
    constructor () ERC20 ("KRSNA", "TOKEN"){
        _mint(msg.sender, 10000 * ( 10 ** uint256(decimals())));
    }

}

// for same file 
contract contract1 {

    function calling()
    public
    returns(string memory)  
    {
        contract2 b = new contract2();
        return b.testing();
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