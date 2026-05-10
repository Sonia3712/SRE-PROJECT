CREATE DATABASE hospital_re;

USE hospital_re;

CREATE TABLE pat_master (
    pid INT,
    full_name VARCHAR(255),
    dob VARCHAR(50),
    gender CHAR(1),
    ph1 VARCHAR(20),
    ph2 VARCHAR(20),
    ph3 VARCHAR(20),
    address_txt TEXT,
    reg_doc VARCHAR(255),
    notes TEXT
);

CREATE TABLE appointments (
    appt_id INT,
    pid INT,
    patient_nm VARCHAR(255),
    patient_ph VARCHAR(20),
    doc_id INT,
    doc_name VARCHAR(255),
    appt_dt VARCHAR(50),
    room VARCHAR(100),
    status CHAR(1)
);

CREATE TABLE doctors (
    DoctorID INT,
    FullName VARCHAR(255),
    Speciality VARCHAR(255),
    ContactNo VARCHAR(20),
    JoinDt VARCHAR(50),
    Salary FLOAT,
    isActive VARCHAR(10)
);

CREATE TABLE billing (
    bill_no INT,
    pid INT,
    services TEXT,
    svc_cost FLOAT,
    tax_pct FLOAT,
    tax_amt FLOAT,
    grand_total FLOAT,
    paid FLOAT,
    balance FLOAT
);
