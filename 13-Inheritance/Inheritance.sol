// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }

    function bar() public pure virtual returns (string memory) {
        return "A";
    }

    // with override keyword, this function overrides the inherited function

    function baz() public pure returns (string memory) {
        return "A";
    }
    // more code here
}

contract B is A {
    function foo() public pure override returns (string memory) {
        return "B";
    }

    function bar() public pure virtual override returns (string memory) {
        return "B";
    }

    // more code here
}

contract C is B {
    function bar() public pure override returns (string memory) {
        return "C";
    }
}
