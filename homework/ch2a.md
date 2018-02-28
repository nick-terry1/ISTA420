### sql Homework ch2a
#### author: nick terry
#### date: feb 28, 2018



1. Primary key constraint is a unique attribute and not NULL. Its equivolent to a unique constraint and a forein key constraint.

2. Nullibility constraint is the ability for a value to hold NULL or not. It prevents entering a row with missing values.

3. A unique constraint enforces the uniqueness of rows and allows the implementation of foreign keys. It prevents redundancies.

4. A foreign key constraint enforces referential integrity and its purpose is to restrict the values allowed in the foreign key columns to those that exitst in the referenced columns.

5. A check constraint is a command that defines a predicate that a row must meet to be entered into the table or be modified. It allows rows to be accepted or rejected based on the constraint.

6. A default constaint is an expression used as a default value when an explicit values is not specified for the attribute when you insert a row. It allows you to set an attribute without explicitly specifying a value. 

7. Domain integrity is when all data in a field contains valid values.

8. Difference between where and having clauses where filters rows and having filters groups. Theyre alike because theyre both ways to filter data.

9. The sql operator with the highest precedence is from.

10. No, because NULL = NULL evaluates to unknown. Two unknown values may or may not be equal.