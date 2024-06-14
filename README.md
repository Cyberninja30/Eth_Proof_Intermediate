# Eth_Proof_Intermediate - Module I

# Smart Contract for Handling Errors
This is a Smart Contract written in Solidity which has three different functions that handle errors using the `require()`, `revert()`, and `assert()` functions

## Requirements to run the program 
Solidity ^0.8.18 and Remix IDE

Here is a README file for the `StudentMarks` contract:

**StudentMarks Contract**
==========================

**Overview**
------------

The `StudentMarks` contract is a smart contract written in Solidity that manages student marks. It allows users to add, update, and deduct marks, as well as remove a student's information.

**Functions to be used**
------------------------

### addStudent

* Adds a new student to the contract with the given ID, name, and marks.
* Requires:
	+ Student ID must be greater than 0.
	+ Marks must be between 0 and 100.
* Emits `StudentAdded` event.

### updateMarks

* Updates the marks of an existing student with the given ID and new marks.
* Requires:
	+ Student ID must be greater than 0.
	+ New marks must be between 0 and 100.
* Emits `MarksUpdated` event.

### addBonusMarks

* Adds bonus marks to an existing student with the given ID and bonus marks.
* Requires:
	+ Student ID must be greater than 0.
	+ Bonus marks must be between 1 and 20.
	+ Total marks cannot exceed 100.
* Emits `BonusMarksAdded` event.

### deductMarks

* Deducts marks from an existing student with the given ID and deducted marks.
* Requires:
	+ Student ID must be greater than 0.
	+ Deducted marks must be between 1 and 20.
	+ Total marks cannot be negative.
* Emits `MarksDeducted` event.

### removeStudent

* Removes a student's information from the contract with the given ID.
* Requires:
	+ Student ID must be greater than 0.
* Emits `StudentRemoved` event.

### getStudent

* Returns the name and marks of a student with the given ID.
* Requires:
	+ Student ID must be greater than 0.

**Events**
------------

* `StudentAdded`: Emitted when a new student is added to the contract.
* `MarksUpdated`: Emitted when a student's marks are updated.
* `BonusMarksAdded`: Emitted when bonus marks are added to a student.
* `MarksDeducted`: Emitted when marks are deducted from a student.
* `StudentRemoved`: Emitted when a student's information is removed from the contract.

**License**
---------

This contract is licensed under the MIT License.

**Author**
---------

Moinak Niyogi


