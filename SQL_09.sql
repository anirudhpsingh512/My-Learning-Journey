USE customer;
SELECT * FROM student;

CALL new_procedure(27);

CALL new_procedure_2(@record);
SELECT @record AS total_records;

CALL new_procedure_3(@record, 27);
SELECT @record AS total_records; 