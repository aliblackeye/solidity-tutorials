// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

contract StructEnum {
    // Order status enum
    enum Status { 
        TAKEN, // 0
        PREPARING, // 1
        BOXED, // 2
        SHIPPED // 3
    }

    // Order struct
    struct Order {
        address customer;
        string zipCode;
        uint256[] products;
        Status status;
    }

    Order[] public orders;
    address public owner;

    // When the contract is deployed, the owner is set
    constructor() {
        owner = msg.sender;
    }

    // Add a new order
    function createOrder(string memory _zipCode, uint256[] memory _products)
        external
        returns (uint256)
    {
        require(_products.length > 0, "No products.");

        // Order memory order;
        // order.customer = msg.sender;
        // order.zipCode = _zipCode;
        // order.products = _products;
        // order.status = Status.TAKEN;

        // Line 25-29 is the same as line 32

        orders.push(
            Order({
                customer: msg.sender,
                zipCode: _zipCode,
                products: _products,
                status: Status.TAKEN
            })
        );

        return orders.length - 1;
    }

    function advancedOrder(uint256 _orderId) external {
        require(owner == msg.sender, "Not owner.");
        require(_orderId < orders.length, "Not a valid order id.");

        Order storage order = orders[_orderId]; // Storage variables can be used after function finishes.
        require(order.status != Status.SHIPPED, "Order is already shipped.");

        if (order.status == Status.TAKEN) {
            order.status = Status.PREPARING;
        } else if (order.status == Status.PREPARING) {
            order.status = Status.BOXED;
        } else if (order.status == Status.BOXED) {
            order.status = Status.SHIPPED;
        }

        
    }


    
}
