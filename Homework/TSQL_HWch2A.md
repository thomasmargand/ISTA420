# TSQL Homework Chapter 2A
### Thomas Margand
### February 22, 2018


1. What is the primary key constraint? What two other constraints is it equivalent to?

A primary key constraint enforces the uniqueness of rows and also disallows NULLs in the constraint attributes.
It is equivalent to a unique constraint.

2. What is a nullability constraint? What does it prevent? 	

The NOT NULL constraint enforces a column to NOT accept NULL values. This enforces a field to always contain a value,
which means that you cannot insert a new record, or update a record without adding a value to this field.

3. What is a unique constraint? What does it prevent?

A unique constraint enforces the uniqueness of rows, allowing you to implement the concept of alternate keys from the
relational model in your database. Unlike with primary keys, you can define multiple unique constraints within the same
table.  Also, a unique constrain is not restricted to columns defined as NOT NULL.

4. What is a foreign key constraint? What does it prevent?

A foreign key enforces referential integrity. This constraint is defined on one or more attributes in what’s called the
referencing table and points to candidate-key (primary-key or unique constraint) attributes in what’s called the referenced table.

5. What is a check constraint? What does it allow?

You can use a check constraint to define a predicate that a row must meet to be entered into the table or to be modified.

6. What is a default constraint? What does it allow?

A default constraint is associated with a particular attribute. It’s an expression that is used as the default value when an explicit value is not specified for the attribute when you insert a row.

7. What is domain integrity? This is not in your text book, but it's important.

Domain integrity specifies that all columns in a relational database must be declared upon a defined domain.

8. What is the difference between the where and the having clauses? How are they alike? 	

Whereas the WHERE clause is a row filter, the HAVING clause is a group filter.  They are similar because they will only
include groups or rows for which a predicate value evaluates to true.

9. What SQL operator has the highest precedence? What SQL operator has the lowest precedence?

The operator with the highest precedence is FROM and the operator with the lowest precedence is ORDER BY.

10. Yes or no: In the SQL standard, is NULL equal to NULL? Why or why not?

TRICK QUESTION! The answer is yes and no.
