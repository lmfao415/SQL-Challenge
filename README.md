# SQL Databse Creation and Analysis

This analysis involves setting up sample relational employee database for *Pewlett Hackard*, using data from the [Employee CSV Files](https://github.com/lmfao415/SQL-Challenge/tree/main/EmployeeSQL/data).

An [Entity Relationship Diagram](https://github.com/lmfao415/SQL-Challenge/blob/main/EmployeeSQL/EmployeeERD.png) is first created to illustrate the data relationships:
![png](https://github.com/lmfao415/SQL-Challenge/blob/main/EmployeeSQL/EmployeeERD.png?raw=true)

The data can be imported from the CSV files to SQL using this [Table Schemata](https://github.com/lmfao415/SQL-Challenge/blob/main/EmployeeSQL/table_schemata.sql).


With the employee database set, the data can be analyzed. Provided here are various [SQL Queries](https://github.com/lmfao415/SQL-Challenge/blob/main/EmployeeSQL/employee_queries.sql) performing the following:

1. Lists the following details of each employee: employee number, last name, first name, sex, and salary.

2. Lists first name, last name, and hire date for employees who were hired in 1986.

3. Lists the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. Lists the department of each employee with the following information: employee number, last name, first name, and department name.

5. Lists first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. Lists all employees in the Sales department, including their employee number, last name, first name, and department name.

7. Lists all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, lists the frequency count of employee last names, i.e., how many employees share each last name.

Example query:

![samp](https://github.com/lmfao415/SQL-Challenge/blob/main/EmployeeSQL/query.png?raw=true)



Further analysis involving Pandas and Matplotlib visualization via SQLAlchemy is available in the [bonus_analysis](https://github.com/lmfao415/SQL-Challenge/blob/main/EmployeeSQL/bonus_analysis.ipynb) Jupyter Notebook for which an additional [SQL View](https://github.com/lmfao415/SQL-Challenge/blob/main/EmployeeSQL/bonus_view.sql) is needed.

This Notebook imports the data from SQL to create:

A histogram to visualize the most common salary ranges for employees.

![img](https://github.com/lmfao415/SQL-Challenge/blob/main/EmployeeSQL/hist.png?raw=true)

A bar chart of average salary by title.

![img](https://github.com/lmfao415/SQL-Challenge/blob/main/EmployeeSQL/salaries.png?raw=true)
