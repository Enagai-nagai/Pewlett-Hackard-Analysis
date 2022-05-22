# Pewlett-Hackard-Analysis

## Overview
Pewlett Hackard is a large company with more than 300,000 employees that is expecting a huge talent loss due to the "Silver Tsunami", retirement of baby boomers generation.
This company wants to understand
1. who will retire and who are eligible to receive the retirement packages  
2. what positions will need to be filled  
3. who are eligible for the mentorship program  


## Results
* 72458 employees will retire in 3 years
* The breakout of retiring employees by positions is as follows
* The majority of the positions that need to be filled are Senior Engineer and Senior Staff.
* ![image](https://user-images.githubusercontent.com/99149443/169704260-10331fa9-480a-4e78-b746-8c69de4bb53b.png)
* The number of employees eligible for a mentorship program is 1549
* The breakout of employees eligible for a mentoship program is as follows
* ![image](https://user-images.githubusercontent.com/99149443/169704565-1e53cb37-23b4-490b-9ccc-b787c69af860.png)



## Summary
Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
How many roles will need to be filled as the "silver tsunami" begins to make an impact?
Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

#### The number of employees
Pewlett-Hackard expects the retirment of 70000+ employees in the next 3 years, however it hires way less employees recently.
In 1985 more than 30000 people were hired, however the number of new hire decreases every year and in 1999 only 1500 people were newly hired.
Even though the human resource can be reduced due to the automation by technology, the loss of huge number of talent is serious.  
The company needs to consider increasing the number of new hires so it can make sure to have enough human resource.

![image](https://user-images.githubusercontent.com/99149443/169705508-c5a05a53-9dba-4155-b98a-30ebe242760c.png)

#### Mentorship eligible employees
According to the company's requirement, there are 1549 employees eligible for a mentorship program.   
This is definitely not enough to fill the positions that will be empty once babyboomers retire. 
For example, even though there are 20000+ Senior Engineer and Senior Staff positions that will be open but there are only around 300 candidates of the mentorship program.  
The company should broaden the eligibility of the mentor program so that more employees can take advantage of the program and be placed in the vacant positions that are needed.
![image](https://user-images.githubusercontent.com/99149443/169715666-47521633-0885-4bbb-8d42-69a7ed633da1.png)


#### Appendix
* Query for the comparizon of the number of retiring employees and mentorship employees.  
SELECT rt.title, rt.count AS retiring_count, mt.count AS mentorship_count
FROM retiring_titles AS rt
	LEFT JOIN mentorship_titles AS mt
		ON (rt.title = mt.title)
    
* Query for the table of the number of new hire by year  
SELECT to_char(hire_date, 'YYYY') as hire_year, COUNT(emp_no)
FROM employees
GROUP BY hire_year
ORDER BY hire_year;

