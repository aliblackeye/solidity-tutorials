// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// 3 ways to send ETH
// transfer - 2300 gas, reverts
// send - 2300 gas, returns bool
// call - all gas, returns bool and data

contract SendEther {
    constructor() payable {}

    receive() external payable {}

    function sendViaTransfer(address payable _to) external payable {
        _to.transfer(123);
    }

    function sendViaSend(address payable _to) external payable {
        bool sent = _to.send(123);
        require(sent, "Failed to send Ether");
    }

    function sendViaCall(address payable _to) external payable {
        (bool success,) = _to.call{value:123}("");
        require(success, "Failed to send Ether");
    }
    
}

contract EthReceiver {
    event Log(uint amount, uint gas);

    receive() external payable {
        emit Log(msg.value, gasleft());
    }
}
