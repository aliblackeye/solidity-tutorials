// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

contract Counter {
    uint public count;

    function inc() external {
        count++;
    }

    function dec() external {
        count--;
    }
}