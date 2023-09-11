// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract NewToken {
// public variables here
string public TokenName = "AKASH"; 
string public TekonID = "ASH"; 
uint public totalSupply = 0;

// mapping variable here
mapping(address => uint) public balances;

// function for minting
function mint (address _address, uint _value) public {
    totalSupply += _value; 
    balances[_address] += _value;
}

// function for burning tokens
function burn (address _address, uint _value) public {
    if (balances[_address]>_value){
        totalSupply -= _value;
        balances[_address] -= _value;
    }
}
}
