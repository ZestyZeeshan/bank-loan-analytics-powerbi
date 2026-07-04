Select * from Bank_Loan_data

select count(id) as Total_Loan_Application from Bank_Loan_data

select count(id) as PMTD_Total_Loan_Application from Bank_Loan_data
where MONTH(issue_date) = 12 AND YEAR(issue_date)=2021

"Month to date"
select SUM(loan_amount) AS MTD_TOTAL_FUNDED_AMOUNT from Bank_Loan_data
where MONTH(issue_date) = 12 AND YEAR(issue_date)=2021

"Previous Month to date"
select SUM(loan_amount) AS PMTD_TOTAL_FUNDED_AMOUNT from Bank_Loan_data
where MONTH(issue_date) = 11 AND YEAR(issue_date)=2021

select SUM(total_payment) as total_amount_recieve from Bank_Loan_data

select SUM(total_payment) as MTD_total_amount_recieve from Bank_Loan_data
where MONTH(issue_date) = 12 AND YEAR(issue_date)=2021

select SUM(total_payment) as PMTD_total_amount_recieve from Bank_Loan_data
where MONTH(issue_date) = 12 AND YEAR(issue_date)=2021

SELECT ROUND(AVG(int_rate),4) * 100 as Avg_Interest from Bank_Loan_data

SELECT ROUND(AVG(int_rate),4) * 100 as MTD_Avg_Interest from Bank_Loan_data
where MONTH(issue_date) = 12 AND YEAR(issue_date)=2021

SELECT ROUND(AVG(int_rate),4) * 100 as PMTD_Avg_Interest from Bank_Loan_data
where MONTH(issue_date) = 11 AND YEAR(issue_date)=2021

SELECT ROUND(AVG(dti),4) * 100 as AVG_DTI from Bank_Loan_data

SELECT ROUND(AVG(dti),4) * 100 as Mtd_AVG_DTI from Bank_Loan_data
where MONTH(issue_date) = 12 AND YEAR(issue_date)=2021

SELECT ROUND(AVG(dti),4) * 100 as PMTD_AVG_DTI from Bank_Loan_data
where MONTH(issue_date) = 11 AND YEAR(issue_date)=2021

SELECT 
       (Count(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END)*100)
       /
       Count(id) as Good_loan_percent
from Bank_Loan_data

Select * from Bank_Loan_data

SELECT COUNT(id) AS Good_Loan_Application from Bank_Loan_data
where loan_status = 'Fully Paid' Or loan_status = 'Current'

Select SUM(LOAN_AMOUNT) AS GOOD_LOAN_FUNDED_AMOUNT from Bank_Loan_data
where loan_status = 'Fully Paid' Or loan_status = 'Current'

Select SUM(total_payment) AS GOOD_LOAN_Recieved_AMOUNT from Bank_Loan_data
where loan_status = 'Fully Paid' Or loan_status = 'Current'

SELECT 
       (Count(CASE WHEN loan_status = 'Charged Off' THEN id END)*100.0)
       /
       Count(id) as Bad_loan_percent
from Bank_Loan_data

SELECT COUNT(id) AS Bad_Loan_Application from Bank_Loan_data
where loan_status = 'Charged Off' 

Select SUM(LOAN_AMOUNT) AS BAD_LOAN_FUNDED_AMOUNT from Bank_Loan_data
where loan_status = 'Charged Off'

Select SUM(total_payment) AS BAD_LOAN_Recieved_AMOUNT from Bank_Loan_data
where loan_status = 'Charged Off'

SELECT 
      loan_status,
      COUNT(id) AS Total_Loan_Applications,
      SUM(total_payment) AS Total_Amount_Recieved,
      SUM(loan_amount) AS Total_Funded_Amount,
      AVG(int_rate * 100) AS INTEREST_RATE,
      AVG(dti * 100) as DTI
   FROM Bank_Loan_data
GROUP BY loan_status

SELECT 
      loan_status,
      SUM(total_payment) AS MTD_Total_Amount_Recieved,
      SUM(loan_amount) AS MTD_Total_Funded_Amount
   FROM Bank_Loan_data
   WHERE MONTH(issue_date) = 12
GROUP BY loan_status


SELECT 
      loan_status,
      SUM(total_payment) AS PMTD_Total_Amount_Recieved,
      SUM(loan_amount) AS PMTD_Total_Funded_Amount
   FROM Bank_Loan_data
   WHERE MONTH(issue_date) = 11
GROUP BY loan_status


SELECT 
      MONTH(issue_date) as Month_Num,
      DATENAME(MONTH, issue_date) as Month_Name,
      COUNT(id) AS Total_Loan_Application,
      SUM(loan_amount) AS Total_Funded_Amount,
      SUM(total_payment) AS Total_Amount_Recieved
from Bank_Loan_data
group by MONTH(issue_date) ,
      DATENAME(MONTH, issue_date)
order by MONTH(issue_date)
      

SELECT 
      address_state,
      COUNT(id) AS Total_Loan_Application,
      SUM(loan_amount) AS Total_Funded_Amount,
      SUM(total_payment) AS Total_Amount_Recieved
from Bank_Loan_data
group by address_state
order by COUNT(id) DESC

SELECT 
     term,
     COUNT(id) AS Total_Loan_Application,
     SUM(loan_amount) AS Total_Funded_Amount,
     SUM(total_payment) AS Total_Amouint_Received
FROM Bank_Loan_data
group by term
order by term


SELECT 
     emp_length,
     COUNT(id) AS Total_Loan_Application,
     SUM(loan_amount) AS Total_Funded_Amount,
     SUM(total_payment) AS Total_Amouint_Received
FROM Bank_Loan_data
group by emp_length
order by COUNT(id) desc

SELECT 
     purpose,
     COUNT(id) AS Total_Loan_Application,
     SUM(loan_amount) AS Total_Funded_Amount,
     SUM(total_payment) AS Total_Amouint_Received
FROM Bank_Loan_data
group by purpose
order by COUNT(id) desc

SELECT 
     home_ownership,
     COUNT(id) AS Total_Loan_Application,
     SUM(loan_amount) AS Total_Funded_Amount,
     SUM(total_payment) AS Total_Amouint_Received
FROM Bank_Loan_data
group by home_ownership
order by COUNT(id) desc
