
// CRUD Operations

// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

contract Crud {
    
    struct Student{
        string name;
        string email;
        uint256 rollnumber;
        uint256 contactnumber;
        uint256 timestamp;
    }
    mapping (uint256 => Student) StudentDB;
    uint256 rollnumber = 1;

    event StudentAdded(
        string name,
        uint256 rollnumber,
        uint256 timestamp
    );

    function addStudent(
        string memory _name,
        string memory _email,
        uint256 _contactnumber
    ) public {
        StudentDB[rollnumber].name = _name;
        StudentDB[rollnumber].email = _email;
        StudentDB[rollnumber].rollnumber = rollnumber;
        StudentDB[rollnumber].contactnumber = _contactnumber;
        StudentDB[rollnumber].timestamp = block.timestamp;
        emit StudentAdded(_name,rollnumber,block.timestamp);
        rollnumber+=1;
    }
}