# TSQL Homework Chapter 1
### Thomas Margand
### February 21, 2018


1. Give an informal definition of database as used in the expression "relational database management system."

The goal of the relational model is to enable consistent representation of data with minimal or no redundancy
and without sacrificing completeness and to define data integrity as part of the model. An RDBMS is supposed to
implement the relational model and provide the means to store manage and enforce the integrity of and query data.  
(Page 5)

2. Give an informal definition of database as used in the expression "Human Resources database."

A database is a collection of objects.

3. Give an informal definition of entity integrity.

 - Page 7

4. Give an informal definition of referential integrity. 	

Foreign keys are used to enforce referential integrity. A foreign key is defined on one or more attributes of a
relation and references a candidate key in another relation.

5. What is a relation as defined in the textbook? A one word answer to this question is sufficient.

Representation.

6. Is this table in first normal form? Why or why not? If it is not, how would you change it?

 No.

7. Is this table in second normal form? Why or why  not? If this is not, how would you change it?

No.

8. Is this table in third normal form? Why or why not? If it is not, how would you change it? 	

No.

9. What is an OLTP database? What operations is it optimized for?

Online Transactional Processing is optimized for data entry.

10. What is a star schema? What operations is it optimized for?

The simplest data warehouse design is called a star schema. The star schema includes several dimension tables and
a fact table. Each dimension table represents a subject by which you want to analyze the data.
