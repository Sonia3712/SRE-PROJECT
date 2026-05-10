-- R2: Status Reference Refactoring

CREATE TABLE appt_status_ref (
    status_code CHAR(1) PRIMARY KEY,
    description VARCHAR(50) NOT NULL
);

INSERT INTO appt_status_ref VALUES
('P','Pending'),
('C','Completed'),
('X','Cancelled'),
('H','On Hold'),
('R','Rescheduled');

SELECT * FROM appt_status_ref;

ALTER TABLE appointments
ADD CONSTRAINT fk_appt_status
FOREIGN KEY (status)
REFERENCES appt_status_ref(status_code);
