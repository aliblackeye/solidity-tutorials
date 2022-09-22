// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

contract Error {
    function testRequire(uint256 _i) public pure {
        require(_i >= 10, "i > 10");
        // code
    }

    function testRevert(uint256 _i) public pure {
        if (_i >= 10) {
            revert("i > 10"); // If you have nested if statements, "revert" is a better option to use.
        }
    }

    uint256 public num = 123;

    function testAssert(uint256 _i) public pure {
        assert(_i >= 10); // assert is used to check for internal errors, and to check invariants.
    }

    error MyError(address caller, uint256 _i);

    function testCustomError(uint256 _i) public view {
        if (_i >= 10) {
            revert MyError(msg.sender, _i);
        }
    }
}
