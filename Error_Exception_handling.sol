// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

//This smart contract implements the usage of require(), assert() and revert() statements for handling the errors and exceptions.

contract MyContract {

    // Mapping variable to store balances
    mapping(address => uint) public balances;

    // Deposit Function
    function deposit_amt(address _address, uint _value) public {
        require(_value > 120, "Deposit value must be greater than 120");

        balances[_address] += _value;

        assert(balances[_address] >= _value);
        if (balances[_address] < _value) {
            revert("Deposit failed");
        }
    }

    // Withdraw Function
    function withdraw_amt(address _address, uint _value) public {
        require(balances[_address] >= _value, "Insufficient balance");

        balances[_address] -= _value;

        assert(balances[_address] >= 0);
        if (balances[_address] < 0) {
            revert("Withdrawal failed");
        }
    }
}
