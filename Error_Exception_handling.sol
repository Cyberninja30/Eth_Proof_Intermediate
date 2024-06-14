// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract StudentMarks {
    struct Student {
        uint256 id;
        string name;
        uint256 marks;
    }

    mapping (uint256 => Student) public students;
    uint256 public studentCount;

    event StudentAdded(uint256 id, string name, uint256 marks);
    event MarksUpdated(uint256 id, uint256 newMarks);
    event BonusMarksAdded(uint256 id, uint256 bonusMarks);
    event MarksDeducted(uint256 id, uint256 deductedMarks);
    event StudentRemoved(uint256 id);

    function addStudent(uint256 _id, string memory _name, uint256 _marks) public {
        require(_id > 0, "Student ID must be greater than 0");
        require(_marks >= 0 && _marks <= 100, "Marks must be between 0 and 100");
        students[_id] = Student(_id, _name, _marks);
        studentCount++;
        emit StudentAdded(_id, _name, _marks);
        assert(students[_id].id == _id); // Assert that the student ID is set correctly
    }

    function updateMarks(uint256 _id, uint256 _newMarks) public {
        require(_id > 0, "Student ID must be greater than 0");
        require(_newMarks >= 0 && _newMarks <= 100, "New marks must be between 0 and 100");
        Student storage student = students[_id];
        require(student.id > 0, "Student not found");
        student.marks = _newMarks;
        emit MarksUpdated(_id, _newMarks);
        assert(student.marks == _newMarks); // Assert that the marks are updated correctly
    }

    function addBonusMarks(uint256 _id, uint256 _bonusMarks) public {
        require(_id > 0, "Student ID must be greater than 0");
        require(_bonusMarks > 0 && _bonusMarks <= 20, "Bonus marks must be between 1 and 20");
        Student storage student = students[_id];
        require(student.id > 0, "Student not found");
        require(student.marks + _bonusMarks <= 100, "Total marks cannot exceed 100");
        student.marks += _bonusMarks;
        emit BonusMarksAdded(_id, _bonusMarks);
        assert(student.marks >= _bonusMarks); // Assert that the bonus marks are added correctly
    }

    function deductMarks(uint256 _id, uint256 _deductedMarks) public {
        require(_id > 0, "Student ID must be greater than 0");
        require(_deductedMarks > 0 && _deductedMarks <= 20, "Deducted marks must be between 1 and 20");
        Student storage student = students[_id];
        require(student.id > 0, "Student not found");
        require(student.marks - _deductedMarks >= 0, "Total marks cannot be negative");
        student.marks -= _deductedMarks;
        emit MarksDeducted(_id, _deductedMarks);
        assert(student.marks >= 0); // Assert that the marks are not negative
    }

    function removeStudent(uint256 _id) public {
        require(_id > 0, "Student ID must be greater than 0");
        Student storage student = students[_id];
        require(student.id > 0, "Student not found");
        delete students[_id];
        studentCount--;
        emit StudentRemoved(_id);
        assert(students[_id].id == 0); // Assert that the student is removed correctly
    }

    function getStudent(uint256 _id) public view returns (string memory, uint256) {
        Student storage student = students[_id];
        require(student.id > 0, "Student not found");
        return (student.name, student.marks);
    }
}

/* 
Code Explanation:

The contract starts by defining a Student struct to store student information, including ID, name, and marks. It also has a mapping to store students and a variable to keep track of the number of students.

The first function is addStudent, which adds a new student to the contract. It takes three parameters: _id, _name, and _marks. It uses require to ensure 
that the student ID is greater than 0 and the marks are non-negative. If the conditions are met, it adds the student to the mapping and increments the 
student count.

The second function is updateMarks, which updates the marks of an existing student. It takes two parameters: _id and _newMarks. It uses require to ensure 
that the student ID is greater than 0 and the new marks are non-negative. If the conditions are met, it updates the student's marks.

The third function is addBonusMarks, which adds bonus marks to an existing student. It takes two parameters: _id and _bonusMarks. It uses require to ensure 
that the student ID is greater than 0 and the bonus marks are positive. If the conditions are met, it adds the bonus marks to the student's marks.

The fourth function is deductMarks, which deducts marks from an existing student. It takes two parameters: _id and _deductedMarks. It uses require to ensure 
that the student ID is greater than 0 and the deducted marks are positive. If the conditions are met, it deducts the marks from the student's marks.

The fifth function is removeStudent, which removes a student's information from the contract. It takes one parameter: _id. It uses require to ensure that 
the student ID is greater than 0. If the condition is met, it deletes the student from the mapping and decrements the student count.

Here are the limits I added:

addStudent: Marks must be between 0 and 100.

updateMarks: New marks must be between 0 and 100.

addBonusMarks: Bonus marks must be between 1 and 20, and the total marks cannot exceed 100.

deductMarks: Deducted marks must be between 1 and 20, and the total marks cannot be negative.
 */
