
## Project:  PL/SQL — Collections, Records & GOTO Demonstration
By:   Diego Gaju

Date:     November 2025

**Purpose:**

This small PL/SQL project demonstrates three important PL/SQL
concepts — Collections, Records, and the GOTO statement — through
a short, executable example.

Concept Explanation:
1. RECORD:
   A composite variable that can store multiple fields of different
   data types. In this program, 'emp_rec' holds employee details:
   ID, Name, and Salary.

2. COLLECTION:
   A group of elements (in this case, employee records) stored in
   memory. Here, 'emp_table' is a TABLE of 'emp_rec', allowing us
   to loop through several employees.

3. GOTO:
   A flow-control statement used to jump to a specific labeled part
   of the code. It is used here to skip invalid employee records
   such as missing names or negative salaries.

Program Description:
The program defines a small collection of four employees. It checks
each record’s data:
   - If valid → prints that the employee was processed.
   - If invalid → uses GOTO to jump to a label that reports an error.
After looping through all employees, it prints a summary showing
how many were valid and how many were invalid.

Sample Output:
Employee Alice processed successfully.
Invalid data found for employee ID 102
Invalid data found for employee ID 103
Employee Clara processed successfully.

Summary:
Valid employees: 2
Invalid employees: 2

How to Run:
1. Open Oracle SQL Developer or SQL*Plus.
2. Enable output using:
      SET SERVEROUTPUT ON;
3. Copy and run the contents of 'salary_demo.sql'.
4. Observe the DBMS_OUTPUT messages on screen.

Learning Outcome:
After running this program, you will understand how to:
- Create and use PL/SQL RECORD types.
- Store records inside a COLLECTION.
- Control program flow with GOTO and labeled blocks.
