// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

contract Mapping {
    // Key(uint) -> Value(string) - Example: Key = 34, Value = "Ali" ("The number "34" marks the letter "Ali")
    mapping(address => bool) public registered;

    function register() public {
        require(!registered[msg.sender]); // If a user has registered, user can't register.
        registered[msg.sender] = true;
    }

    function isRegistered() public view returns(bool) {
        return registered[msg.sender];
    }

    function deleteRegistered() public {
        require(isRegistered(), "User not registered"); // if isRegistered() returns false, user can't delete registration.
        delete(registered[msg.sender]);
        
    }
}


contract NestedMapping {
    mapping(address => mapping(address => uint256)) public debts;

    function incDebt(address _borrower, uint256 _amount) public {
        debts[msg.sender][_borrower] += _amount;
    }

    function decDebt(address _borrower, uint256 _amount) public {
        require(debts[msg.sender][_borrower] >= _amount, "Not enough debt.");
        debts[msg.sender][_borrower] -= _amount;
    }

    function getDebt(address _borrower) public view returns(uint256){
        return debts[msg.sender][_borrower];
    }

}