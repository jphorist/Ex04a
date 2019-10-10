/* JP did the evens and Nick did the odds*/

/* *** SQL-Query-CH03-01 *** by JP & Nick */ 
SELECT  ProjectID, ProjectName, Department, MaxHours, StartDate, EndDate 
FROM PROJECT;

/* *** SQL-Query-CH03-02 *** JP & Nick */
SELECT *
FROM PROJECT;

/* *** SQL-Query-CH03-03 *** JP & Nick */ 
SELECT ProjectName, Department, MaxHours 
FROM PROJECT;

/* *** SQL-Query-CH03-04 *** JP & Nick */
SELECT ProjectName, MaxHours, Department
FROM PROJECT;

/* *** SQL-Query-CH03-05 *** JP & Nick */ 
SELECT Department 
FROM PROJECT;

/* *** SQL-Query-CH03-06 *** JP & Nick */
SELECT DISTINCT Department
FROM PROJECT;

/* *** SQL-Query-CH03-07 *** JP & Nick */ 
SELECT * 
FROM  PROJECT
WHERE  Department = 'Finance';

/* *** SQL-Query-CH03-08 *** JP & Nick */
SELECT *
FROM PROJECT
WHERE StartDate = '2017/05/10';

/* *** SQL-Query-CH03-09 *** JP & Nick */ 
SELECT * 
FROM  PROJECT
WHERE MaxHours > 135;

/* *** SQL-Query-CH03-10 *** JP & Nick */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE Department = 'Accounting';

/* *** SQL-Query-CH03-11 *** */ 
SELECT  FirstName, LastName, Department, OfficePhone 
FROM    EMPLOYEE
ORDER BY  Department;

/* *** SQL-Query-CH03-12 *** JP & Nick */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
ORDER BY Department DESC;

/* *** SQL-Query-CH03-13 *** JP & Nick */ 
SELECT  FirstName, LastName, Department, OfficePhone
FROM    EMPLOYEE 
ORDER BY  Department DESC, LastName ASC;

/* *** SQL-Query-CH03-14 *** JP & Nick */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE Department = 'Accounting'
AND OfficePhone = '360-285-8430';

/* *** SQL-Query-CH03-15 *** JP & Nick */ 
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE Department = 'Accounting'
   OR OfficePhone = '360-285-8430';

/* *** SQL-Query-CH03-16 *** JP & Nick */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE Department = 'Accounting'
AND NOT OfficePhone = '360-285-8430';

/* *** SQL-Query-CH03-17 *** JP & Nick */ 
SELECT FirstName, LastName, Department, OfficePhone
FROM  EMPLOYEE
WHERE   Department IN ('Administration', 'Finance', 'Accounting');

/* *** SQL-Query-CH03-18 *** JP & Nick */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE Department NOT IN ('Administration', 'Finance',
'Accounting');

/* *** SQL-Query-CH03-19 *** JP & Nick */ 
SELECT FirstName, LastName, Department, OfficePhone
FROM  EMPLOYEE
WHERE EmployeeNumber >= 2
AND EmployeeNumber <= 5;

/* *** SQL-Query-CH03-20 *** JP & Nick */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE EmployeeNumber BETWEEN 2 AND 5;

/* *** SQL-Query-CH03-21 *** JP & Nick */ 
SELECT * 
FROM  PROJECT
WHERE  ProjectName LIKE '2017 Q_ Portfolio Analysis';

/* *** SQL-Query-CH03-22 *** JP & Nick */
SELECT *
FROM EMPLOYEE
WHERE OfficePhone LIKE '360-287-88 ';

/* *** SQL-Query-CH03-23 *** JP & Nick */ 
SELECT * 
FROM  EMPLOYEE
WHERE  OfficePhone LIKE '360-287-88%';

/* *** SQL-Query-CH03-24 *** JP & Nick */
SELECT *
FROM EMPLOYEE
WHERE Department LIKE '%ing';

/* *** SQL-Query-CH03-25 *** JP & Nick */ 
SELECT * 
FROM EMPLOYEE 
WHERE  Department NOT LIKE '%ing';

/* *** SQL-Query-CH03-26 *** JP & Nick */
SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE OfficePhone IS NULL;

/* *** SQL-Query-CH03-27 *** JP & Nick */ 
SELECT FirstName, LastName, Department, OfficePhone 
FROM EMPLOYEE  
WHERE OfficePhone IS NOT NULL;

/* *** SQL-Query-CH03-28 *** JP & Nick */
SELECT COUNT(*)
FROM PROJECT;

/* *** SQL-Query-CH03-29 *** JP & Nick */ 
SELECT COUNT(*) AS NumberOfProjects 
FROM PROJECT;

/* *** SQL-Query-CH03-30 *** JP & Nick */
SELECT COUNT(Department) AS NumberOfDepartments
FROM PROJECT;

/* *** SQL-Query-CH03-31 *** JP & Nick */
SELECT COUNT(DISTINCT Department) AS NumberOfDepartments
FROM PROJECT;

/* *** SQL-Query-CH03-32 *** JP & Nick */
SELECT SUM(MaxHours) AS TotalMaxHours,
AVG(MaxHours) AS AverageMaxHours,
MIN(MaxHours) AS MinimumMaxHours,
MAX(MaxHours) AS MaximumMaxHours
FROM PROJECT
WHERE ProjectID <= 1200;

/* *** SQL-Query-CH03-33 *** JP & Nick */ 
SELECT ProjectName, COUNT(*) 
FROM PROJECT;

/* *** SQL-Query-CH03-34 *** JP & Nick */
SELECT *
FROM PROJECT
WHERE MaxHours > AVG(MaxHours);

/* *** SQL-Query-CH03-35 *** JP & Nick */ 
SELECT ProjectID, ProjectName, MaxHours, (24.50 * MaxHours) AS MaxProjectCost 
FROM PROJECT;

/* *** SQL-Query-CH03-36 *** JP & Nick */
SELECT Department, Count(*) AS NumberOfEmployees
FROM EMPLOYEE
GROUP BY Department;

/* *** SQL-Query-CH03-37 *** JP & Nick */
SELECT  Department, Count(*) AS NumberOfEmployees
FROM  EMPLOYEE 
GROUP BY Department
HAVING   COUNT(*) > 1;

/* *** SQL-Query-CH03-38 *** JP & Nick */
SELECT Department, Count(*) AS NumberOfEmployees
FROM EMPLOYEE
WHERE EmployeeNumber <= 10
GROUP BY Department
HAVING COUNT(*) > 1;

/* *** SQL-Query-CH03-39 *** JP & Nick */ 
SELECT FirstName, LastName 
FROM  EMPLOYEE
WHERE EmployeeNumber IN (6, 10, 11, 16, 17);

/* *** SQL-Query-CH03-40 *** JP & Nick */
SELECT DISTINCT EmployeeNumber
FROM ASSIGNMENT
WHERE HoursWorked > 50;

/* *** SQL-Query-CH03-41 *** JP & Nick */
SELECT FirstName, LastName
FROM  EMPLOYEE 
WHERE  EmployeeNumber IN 
       (SELECT  DISTINCT EmployeeNumber 
        FROM ASSIGNMENT WHERE HoursWorked > 50);

/* *** SQL-Query-CH03-42 *** JP & Nick */
SELECT DISTINCT ProjectID
FROM PROJECT
WHERE Department = 'Accounting';

/* *** SQL-Query-CH03-43 *** JP & Nick */
SELECT DISTINCT EmployeeNumber
FROM  ASSIGNMENT
WHERE  HoursWorked > 40
    AND ProjectID IN
        (SELECT ProjectID   
        FROM PROJECT 
        WHERE Department = 'Accounting');

/* *** SQL-Query-CH03-44 *** JP & Nick */
SELECT FirstName, LastName
FROM EMPLOYEE
WHERE EmployeeNumber IN
(SELECT DISTINCT EmployeeNumber
FROM ASSIGNMENT
WHERE HoursWorked > 40
AND ProjectID IN
(SELECT ProjectID
FROM PROJECT
WHERE Department = 'Accounting'));

/* *** SQL-Query-CH03-45 *** JP & Nick */
SELECT FirstName, LastName, ProjectID, HoursWorked
FROM EMPLOYEE, ASSIGNMENT;

/* *** SQL-Query-CH03-46 *** JP & Nick */
SELECT FirstName, LastName, ProjectID, HoursWorked
FROM EMPLOYEE, ASSIGNMENT
WHERE EMPLOYEE.EmployeeNumber = ASSIGNMENT.EmployeeNumber;

/* *** SQL-Query-CH03-47 *** JP & Nick */
SELECT  FirstName, LastName, ProjectID, HoursWorked
FROM EMPLOYEE, ASSIGNMENT
WHERE EMPLOYEE.EmployeeNumber = ASSIGNMENT.   
        EmployeeNumber
ORDER BY EMPLOYEE.EmployeeNumber, ProjectID;

/* *** SQL-Query-CH03-48 *** JP & Nick */
SELECT FirstName, LastName, ProjectID, HoursWorked
FROM EMPLOYEE JOIN ASSIGNMENT
ON EMPLOYEE.EmployeeNumber = ASSIGNMENT.EmployeeNumber
ORDER BY EMPLOYEE.EmployeeNumber, ProjectID;

/* *** SQL-Query-CH03-49 *** JP & Nick */ 
SELECT  FirstName, LastName,
       SUM(HoursWorked) AS TotalHoursWorked
FROM EMPLOYEE AS E JOIN ASSIGNMENT AS A
    ON E.EmployeeNumber = A.EmployeeNumber
GROUP BY LastName, FirstName
ORDER BY LastName, FirstName;   

/* *** SQL-Query-CH03-50 *** JP & Nick */
SELECT FirstName, LastName, ProjectID, HoursWorked
FROM EMPLOYEE AS E JOIN ASSIGNMENT AS A
ON E.EmployeeNumber = A.EmployeeNumber
WHERE HoursWorked > 50
ORDER BY LastName, FirstName, ProjectID;

/* *** SQL-Query-CH03-51-Access *** JP & Nick */
SELECT   ProjectName, FirstName, LastName,   
          HoursWorked
FROM   (EMPLOYEE AS E INNER JOIN ASSIGNMENT AS A          
          ON  E.EmployeeNumber = A.EmployeeNumber)    
              INNER JOIN PROJECT AS P     
                    ON A.ProjectID = P.ProjectID
 ORDER BY  P.ProjectID, A.EmployeeNumber;
 
 /* *** SQL-Query-CH03-52 *** JP & Nick */
 SELECT * FROM PROJECT;
 
 /* *** SQL-INSERT-CH03-05 *** JP & Nick */
INSERT INTO PROJECT
(ProjectName, Department, MaxHours, StartDate)
VALUES('2017 Q4 Tax Preparation', 'Accounting', 175.00,
'10-DEC-17');

/* *** SQL-Query-CH03-53 *** JP & Nick */
 SELECT  ProjectName, FirstName, LastName, HoursWorked
 FROM   EMPLOYEE AS E JOIN ASSIGNMENT AS A
  ON  E.EmployeeNumber = A.EmployeeNumber    
  JOIN  PROJECT AS P     
  ON A.ProjectID = P.ProjectID
  ORDER BY  P.ProjectID, A.EmployeeNumber;
