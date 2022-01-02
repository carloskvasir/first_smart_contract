// SPDX-License-Identifier: MPL-2.0
pragma solidity ^0.8.11;

contract Token {
    string public name;
    string public symbol;
    uint256 public decimals; 
    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;

    constructor(string memory _name, string memory _symbol, uint _decimals, uint _totalSupply){
        name = _name;
        symbol = _symbol;
        decimals =_decimals;
        totalSupply = _totalSupply;
        balanceOf[msg.sender] = totalSupply;
    }
}
