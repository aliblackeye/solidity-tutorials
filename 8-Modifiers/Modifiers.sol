// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

contract Modifier {
    bool public paused;
    uint public count;

    function setPause(bool _paused) external {
        paused = _paused;
    }

    modifier whenNotPaused() {
        require(!paused, "Contract is paused");
        _; // underscore tells the compiler to replace it with the function body
    }

    function increment() external whenNotPaused {
        count++;
    }

    function decrement() external whenNotPaused {
        count--;
    }

    // Modifiers can take inputs
    modifier cap(uint _x) {
        require(_x < 100, "x >= 100");
        _;
    }

    function incBy(uint _x) external whenNotPaused cap(_x) {
        count += _x;
    }



    modifier sandwich() {
        // code here
        count += 10;
        _; // foo function body
        // more code here
        count *= 2;

    }

    function foo() external sandwich {
        count += 1;
    }
}
