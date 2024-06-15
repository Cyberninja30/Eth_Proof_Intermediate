# Eth_Proof_Intermediate - Module I

# Smart Contract for Handling Errors
This is a Smart Contract written in Solidity which has three different functions that handle errors using the `require()`, `revert()`, and `assert()` functions

## Requirements to run the program 
Solidity ^0.8.18 and Remix IDE

Here is a README file for the `Exception` contract:

**Exception Contract**
======================

**License**
--------

This contract is licensed under the MIT License.

**Functions**
------------

### `setValue(uint256 newValue)`

Sets a new value for the `value` variable, but only if the new value is greater than the current value. Uses `require` to validate the condition.

### `getSquare(uint256 number)`

Returns the cube of a given number, but only if the number is positive. Uses `assert` to check an invariant condition.

### `alwaysRevert()`

Always reverts with a custom error message "This function always reverts.". Uses `revert` to explicitly revert the transaction.

**Error Handling**
----------------

This contract demonstrates three ways to handle errors in Solidity:

* `require`: used to validate input conditions. If the condition is false, the transaction will revert.
* `assert`: used to check invariant conditions that should never be false. If the condition is false, the contract will halt execution and throw an exception.
* `revert`: used to explicitly revert a transaction with a custom error message.

**Solidity Version**
------------------

This contract is written in Solidity version 0.8.18.

**Deployment**
------------

To deploy this contract, simply compile and deploy it to your preferred Ethereum network.

**Testing**
---------

To test this contract, you can use a testing framework such as Truffle or Hardhat. Write test cases to exercise each function and verify that the expected behavior occurs.

**Contributing**
------------

Contributions are welcome! If you'd like to contribute to this contract, please fork the repository and submit a pull request.

**Acknowledgments**
----------------

This contract was created for educational purposes and is intended to demonstrate error-handling mechanisms in Solidity.
