# Eth_Proof_Intermediate

# Smart Contract for Handling Errors
This is a Smart Contract written in Solidity which has three differerent functions that handle errors using the `require()`, `revert()`, and `assert()` functions

## Requirements to run the program 
Solidity ^0.8.18 and Remix IDE

## Functions used in the Smart Contract 

### deposit_amt(address _address, uint _value)

## Description: 
*This function allows depositing a certain value into a specified address.

## Parameters:

*address _address: The address to which the value will be deposited.
*uint _value: The amount to be deposited.

## Error Handling:

*It uses the require statement to ensure that the deposit value is greater than 100. If not, it reverts with the message "Deposit value must be greater than 100".
*After updating the balance, it uses the assert statement to check that the balance of the specified address is at least as much as the deposited value.
*If the assertion fails, it uses the revert statement to revert the transaction with the message "Deposit failed".

### withdraw_amt(address _address, uint _value)

## Description: 
*This function allows withdrawing a certain value from a specified address.

## Parameters:

*address _address: The address from which the value will be withdrawn.
*uint _value: The amount to be withdrawn.

## Error Handling:

*It uses the require statement to ensure that the balance of the specified address is greater than or equal to the withdrawal value. If not, it reverts with the message "Insufficient balance".
*After updating the balance, it uses the assert statement to check that the balance of the specified address is non-negative.
*If the assertion fails, it uses the revert statement to revert the transaction with the message "Withdrawal failed".

## Installation 
copy the entire code on the Remix IDE on your browser or desktop application and after compiling it deploy the program.
Interact using the given parameters and see the functionality of the error handling.

## License
The program uses an MIT License
