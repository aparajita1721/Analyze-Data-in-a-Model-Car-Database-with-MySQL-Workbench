-- Customer service in each country

SELECT employees.employeeNumber, employees.officeCode, employees.jobTitle, offices.country 
FROM employees JOIN offices ON employees.officeCode= offices.officeCode;
