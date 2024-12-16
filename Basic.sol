
// CRUD Operations

// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

contract Basics {

    // constructor
    address public owner;
    constructor(){
        owner = msg.sender;
    }

    // require keyword
    uint256 public coins = 0;
    function add() public {
        require(coins<=3,"Too many Coins!!");
        coins++;
    }

    // using modifier
    modifier onlyOwner(){
        require(msg.sender == owner,"You are not the owner");
        _;
    }
    function set(uint256 _coins) public onlyOwner {
        coins = _coins;
    }

    // Built in keyowrds (msg , tx , block , ether units , time uints(epochs))

    // storage is done in 4 ways 
    // 1. storage 

    uint256 public normalStorage = 0;

    // 2. memory
    function MemoryStorage(string memory _coins) public onlyOwner {
        // lifetime started
        // do something
        // lifetime ended
    }

    // 3. stack
    function stack() public pure  {
        uint256 a;
        uint256 b;

        if(a == b){

        }
    }

    // 4. calldata

    function callDataStorage(string calldata _coins) public onlyOwner {
        // lifetime started
        // do something
        // lifetime ended
    }

    // Errors handlig
    // 1. Require Keyword
    // require(msg.sender == owner,"You are not the owner");


    // 2. Assert
    function assertError() public pure   {
        assert(10==10);
    }

    // 3. Revert
    function revertError() public pure   {
        if (10<5){
            revert();
        }
    }


}