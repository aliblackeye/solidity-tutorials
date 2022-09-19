//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

contract Functions {


    // pure: If the function has the "pure" keyword, you can't read a variable from the state and can't affect any state variable.
    // view: If the function has the "view" keyword, you can read a variable from the state but can't affect any state variable.


    // ------------------------Function Keywords------------------------ 
    //               (Public, External, Internal, Private)  
                



    /* ------------------------ PUBLIC ------------------------ */

    // The function can be called by contract or by anyone.

    uint public luckyNumber = 7;
    uint public unluckyNumber = 3;

    function setNumber(uint newNumber) public { 
        luckyNumber = newNumber;
    } 

    function nothing() public pure returns(uint x, bool y,bool z){ // 
        x=6;
        y=false;
        z=true;
    } 

    function getNumber() public view returns(uint) {
        return luckyNumber;
    }

    
    function sumNumbers() public view returns(uint) {
        return luckyNumber + unluckyNumber;
    }


    /* ------------------------ PRIVATE ------------------------ */

    // The function can only be called by contract.

    function privateKeyword() private pure returns(string memory){ // 
        return "This is a private function";
    }

    function callPrivateKeyword() public pure returns(string memory){ // I can call my "privateKeyword" function like this.
        return privateKeyword();
    }


    /* ------------------------ INTERNAL ------------------------ */

    // This function can only be called by the contract that it inherits.
    
    function internalKeyword() internal pure returns(string memory){ // 
        return "This is a internal function";
    }

    
    function callInternalKeyword() public pure returns(string memory){ // I can call my "internalKeyword" function like this.
        return internalKeyword();
    }



    /* ------------------------ EXTERNAL ------------------------ */

    // This function can only be called by users and can't be called in contract.


    function externalKeyword() external pure returns(string memory){ // 
        return "This is a external function";
    }



} 