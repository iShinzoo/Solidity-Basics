// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

contract Variables {
    // fixed size and visiblity 
    uint256 private  unsigned;
    int256 public signed;
    bool internal state;
    address user;
    bytes32 e;

    function add() external {
        // external is only for the functions 
    }

    // dynamic size 
    string s;
    bytes something;
    uint[] array;
    mapping (uint256 => address) database;

    // user defined 
    struct student{
        string name;
        uint256 number;
    }
    mapping (uint256 => student) studentDB;

    enum gamelevel{
        noob,
        intermediate,
        pro
    }
    // gamelevel.pro = can use enum like this 

    // can use if else statement in solidity like any other languages 
}