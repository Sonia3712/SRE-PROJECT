-- R4: Primary and Foreign Key Constraints

ALTER TABLE billing
ADD PRIMARY KEY (bill_no);

ALTER TABLE pat_master
ADD PRIMARY KEY (pid);

ALTER TABLE billing
ADD CONSTRAINT fk_billing_patient
FOREIGN KEY (pid)
REFERENCES pat_master(pid);

ALTER TABLE doctors
ADD PRIMARY KEY (doctor_id);

ALTER TABLE appointments
ADD CONSTRAINT fk_appt_doctor
FOREIGN KEY (doc_id)
REFERENCES doctors(doctor_id);

SHOW CREATE TABLE billing;

SHOW CREATE TABLE appointments;
