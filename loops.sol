// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

contract loops {

    // for loop 
    mapping (uint256 => string) students;

    function okay(uint256 _num) public {
        for(uint256 i = 0 ; i<_num ; i++){
            students[i] = "Block";
        }
    }

    // while loop 
    function add(string[] memory _names) public {
        uint256 i = 0;
        while(i<_names.length){
            students[i] = _names[i];
            i++;
        }
    }

    // do while loop 
    function dowhile(string[] memory _names) public {
        uint256 i = 0;
        do{
            students[i] = _names[i];
            i++;
        }while(i<_names.length);
    }

    // break keyword 
    function breakapply(string[] memory _names) public {
        uint256 i = 0;
        while(i<_names.length){
            students[i] = _names[i];
            i++;
            break;
        }
    }
}