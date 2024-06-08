// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Product {
    struct ProductInfo {
        string name;
        string description;
        int256 prize;
        uint256 timestamp;
        address from;
    }

    ProductInfo[] public products;
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    function buyProduct(string calldata _name, string calldata _description,int256 _prize)
        external
        payable
    {
       // require(msg.value > 0, "Please send more than 0 ether");

        owner.transfer(msg.value);
        products.push(
            ProductInfo({
                name: _name,
                description: _description,
                prize:_prize,
                timestamp: block.timestamp,
                from: msg.sender
            })
        );
    }

    function getProduct() public view returns (ProductInfo[] memory) {
        return products;
    }
}

