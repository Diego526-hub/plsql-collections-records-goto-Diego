SET SERVEROUTPUT ON;

DECLARE
  -- Record type for employee
  TYPE emp_rec IS RECORD (
    emp_id   NUMBER,
    emp_name VARCHAR2(50),
    salary   NUMBER
  );

  -- Nested table collection
  TYPE emp_table IS TABLE OF emp_rec;

  -- Initialize with sample data
  employees emp_table := emp_table(
    emp_rec(101, 'Alice', 5000),
    emp_rec(102, 'Bob', -300),
    emp_rec(103, NULL, 4200),
    emp_rec(104, 'Clara', 6000)
  );

  -- Counters
  valid_count   NUMBER := 0;
  invalid_count NUMBER := 0;

BEGIN
  -- Process each employee
  FOR i IN 1 .. employees.COUNT LOOP
    
    -- Check for invalid conditions
    IF employees(i).salary < 0 OR employees(i).emp_name IS NULL THEN
      invalid_count := invalid_count + 1;
      DBMS_OUTPUT.PUT_LINE('Invalid data found for employee ID ' || employees(i).emp_id);
    ELSE
      valid_count := valid_count + 1;
      DBMS_OUTPUT.PUT_LINE('Employee ' || employees(i).emp_name || ' processed successfully.');
    END IF;
    
  END LOOP;

  -- Display summary
  DBMS_OUTPUT.PUT_LINE('-----------------------------------');
  DBMS_OUTPUT.PUT_LINE('Summary:');
  DBMS_OUTPUT.PUT_LINE('Valid employees: ' || valid_count);
  DBMS_OUTPUT.PUT_LINE('Invalid employees: ' || invalid_count);
  DBMS_OUTPUT.PUT_LINE('Total processed: ' || employees.COUNT);
END;
/
