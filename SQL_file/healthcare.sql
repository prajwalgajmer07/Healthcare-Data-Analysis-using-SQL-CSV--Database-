Create database healthcare;
use healthcare;

Create table Diagnoses(
	DiagnosisID int primary key,
    DiagnosisName varchar(255)
);

Create table Outcome(
	outcomesId int primary key,
    OutcomesName varchar(255)
);

select * from healthcare.patients;

create table Patients(
	PatientID int primary key,
    PatientName Varchar(255),
    Age int,
    Gender char(1),
    DiagnosisID int,
    AdmissionDate date,
    DischargeDate date,
    outcomesId int,
    TreatmentCost decimal(10,2),
    foreign key (DiagnosisID) references Diagnoses(DiagnosisID),
    foreign key (outcomesId) references Outcome(outcomesId)
);

Create table Labs(
	LabId int primary key,
    PatientId int,
    TestName Varchar(255),
    Result decimal(10,2),
    NormalRange varchar(255),
    foreign key (PatientID) references patients(PatientId)
);
-- Retriving detailed patients lab history
select p.patientid, p.patientname, d.diagnosisName, o.outcomesname, l.testname, l.result, l.normalrange
from patients p
join diagnoses d on p.diagnosisId = d.diagnosisId
join outcome o on p.outcomesId = o.outcomesId
join labs l on p.patientid = l.patientid
order by p.patientname, l.testname;

-- Avg lab result by diagonsis
select d.diagnosisName, l.testname ,avg(l.result) as Avgresult
from patients p 
join diagnoses d on p.diagnosisid = d.diagnosisid
join labs l on p.patientid = l.patientid
group by d.diagnosisName , l.testname ;

-- adnormal result count
Select p.patientID, p.Patientname , count(*) as Adnormalcount
from Patients p
join labs l on p.patientId = l.patientId
where (l.testName='blood sugar'and l.result >120) or
(l.testname='Hemoglobin'and l.result > 13) or
(l.testname='cholesterol' and l.result > 200)
group by p.patientid, p.patientName
order by Adnormalcount desc;

-- checking high risk patients
select p.patientname, p.age, p.gender, d.diagnosisname , o.outcomesname from patients p 
join diagnoses d on p.diagnosisid = d.diagnosisid 
join outcome o on p.outcomesid = o.outcomesid
where age > 65 and gender ='m'and outcomesname != 'recovered';

-- Diagnoses with highest cost 
select d.diagnosisName, sum(p.treatmentcost) as totalcost
from patients p 
join diagnoses d on p.diagnosisid = d.diagnosisid
group by d.diagnosisName 
order by Totalcost desc ;

-- Distribution of outcomes by diagonsis 
select d.diagnosisname, o.outcomesname , count(*) as OutcomeCount
from patients p 
join diagnoses d on p.diagnosisID = d.diagnosisID
join outcome o on p.outcomesid = o.outcomesid
group by d.diagnosisid , o.outcomesName
order by d.diagnosisid , o.outcomesName desc;
