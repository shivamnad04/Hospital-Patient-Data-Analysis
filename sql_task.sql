
DROP TABLE IF EXISTS patients;

CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    age INT,
    gender VARCHAR(10),
    disease VARCHAR(50),
    doctor VARCHAR(50),
    treatment_cost INT
);


INSERT INTO patients VALUES
(1,45,'Male','Diabetes','Dr Shah',5000),
(2,30,'Female','Fever','Dr Patil',2000),
(3,55,'Male','Heart Disease','Dr Shah',20000),
(4,22,'Female','Flu','Dr Kulkarni',1500),
(5,40,'Male','Diabetes','Dr Shah',4500),
(6,60,'Male','Heart Disease','Dr Patil',22000),
(7,28,'Female','Flu','Dr Kulkarni',1800),
(8,35,'Male','Fever','Dr Patil',2500),
(9,50,'Female','Diabetes','Dr Shah',6000),
(10,65,'Male','Heart Disease','Dr Shah',25000),
(11,33,'Female','Flu','Dr Kulkarni',1700),
(12,48,'Male','Diabetes','Dr Shah',5500),
(13,29,'Male','Fever','Dr Patil',2100),
(14,52,'Female','Heart Disease','Dr Shah',23000),
(15,38,'Male','Diabetes','Dr Patil',4800),
(16,27,'Female','Flu','Dr Kulkarni',1600),
(17,44,'Male','Diabetes','Dr Shah',5200),
(18,31,'Female','Fever','Dr Patil',2400),
(19,58,'Male','Heart Disease','Dr Shah',27000),
(20,36,'Female','Diabetes','Dr Shah',5300);


-- 1. Display all patient records
SELECT * FROM patients;

-- =========================================

-- 2. Count patients by disease
SELECT disease, COUNT(*) AS patient_count
FROM patients
GROUP BY disease
ORDER BY patient_count DESC;

-- =========================================

-- 3. Average treatment cost
SELECT AVG(treatment_cost) AS avg_treatment_cost
FROM patients;

-- =========================================

-- 4. Doctor treating most patients
SELECT doctor, COUNT(*) AS total_patients
FROM patients
GROUP BY doctor
ORDER BY total_patients DESC
LIMIT 1;

-- =========================================

-- 5. Additional (useful for analysis)

-- Total cost per disease
SELECT disease, SUM(treatment_cost) AS total_cost
FROM patients
GROUP BY disease;

-- Doctor-wise average cost
SELECT doctor, AVG(treatment_cost) AS avg_cost
FROM patients
GROUP BY doctor;

-- =========================================