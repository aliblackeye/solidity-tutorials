// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

contract Constructor {
    string public tokenName;
    uint256 public totalSupply;

    // ------------- CONSTANT AND IMMUTABLE -------------
    // "constant" and "immutable" variables can't be changed.

    // ------- DIFFERENCES -------
    // "constant" variables must be equal to a value when defined.
    // "immutable" variables don't need to be equal to a value but must be changed in the constructor.
    uint256 public immutable y;
    uint256 public constant x = 10;

    // ------------- CONSTRUCTOR -------------
    constructor(string memory name, uint256 number) {
        tokenName = name;
        totalSupply = number;
        y = 20;
    }
    // The constructor runs when the contract is deployed.


    function set(uint256 number) public {
        totalSupply = number;
    }
}
