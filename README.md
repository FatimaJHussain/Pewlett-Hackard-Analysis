# Pewlett-Hackard-Analysis
# Overview of Analysis
The purpose of this analysis is to create two table:
* First table list all the Retiring Employees along with thier titles
* Second table list all the Employees Eligible for the Mentorship Program

Afterwrds, we write a report summarizing all the analysis. It will help Bobby’s manager to prepare a list of the “silver tsunami” wave as many current employees reach retirement age.

# Storage of Data
Pewlett-Hackard stores its employees data in the form of six CSV files, and below is the ERD for all the datasets:

Figure-1: 
ERD![ERD OFPewlett-Hackard Data](https://github.com/FatimaJHussain/Pewlett-Hackard-Analysis/blob/main/EmployeeDB.png)

# Results
## Deliverable 1: The Number of Retiring Employees by Title
 Three tables are created in deliverable 1. 

1)First table is "Retirement Titles" table, that holds all the titles of current employees who were born between January 1, 1952 and December 31, 1955. 

Figure-2: 
Retirement Titles![Retirement Titles](https://github.com/FatimaJHussain/Pewlett-Hackard-Analysis/blob/main/Retirement_title.png)

2) Second table is "Unique Titles" table, in which duplicate entries for employees are dropped. As some employees have switched titles over the years. In this table, we remove these duplicates and keep only the most recent title of each employee.

Figure-3: 
Unique Titles![Unique Titles](https://github.com/FatimaJHussain/Pewlett-Hackard-Analysis/blob/main/unique_table.png)

3) Third table is "Retiring Titles" table, in which the number of employees are retrieveed by their most recent job title who are about to retire.

Figure-4: 
Retiring Titles![Retiring Titles](https://github.com/FatimaJHussain/Pewlett-Hackard-Analysis/blob/main/retiring_table.png)

## Deliverable 2: The Employees Eligible for the Mentorship Program
In deliverble 2, one table of "Mentorship Eligibility" is created. Which holds the current employees who were born between January 1, 1965 and December 31, 1965.

Figure-4: 
Mentorship Eligibility![Mentorship Eligibility](https://github.com/FatimaJHussain/Pewlett-Hackard-Analysis/blob/main/mentorship.png)
