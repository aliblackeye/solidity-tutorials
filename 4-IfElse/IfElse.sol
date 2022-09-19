// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

contract IfElse {
    bytes32 private hashedPassword;
    string private username;
    uint256 private age;
    bool private isRegistered;

    constructor(
        string memory _username,
        string memory _password,
        uint256 _age
    ) {
        if (_age >= 18) {
            // if user's age is equal or greater than 18, can be registered.
            username = _username;
            age = _age;
            hashedPassword = keccak256(abi.encode(_password)); // password hashing.
            isRegistered = true;
        }
    }

    function login(string memory _password) public view returns (bool) {
        if (isRegistered) {
            // or if isRegistered == true
            return hashedPassword == keccak256(abi.encode(_password)); // lines (15-20) and 22 are the same.
        } else {
            return false;
        }
    }


    /* 
        && - and
        true && false -> false
        || -> or
        true || false -> true
        < less than, > greater than, >= greater than and equal, <= less than and equal, == equals,
    */
}
