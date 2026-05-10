Software Re-Engineering Final Project
Project: Legacy Hospital Management System Re-Engineering

This repository contains the complete software re-engineering workflow for a legacy Hospital Management System. The project includes code smell analysis using SonarQube, technical debt assessment, dependency analysis, schema normalization, database refactoring, and migration validation using MySQL.

1. Repository Structure


SRE-PROJECT/
│
├── sql_scripts/
│   ├── 01_create_legacy_tables.sql
│   ├── 02_r1_derived_data_refactoring.sql
│   ├── 03_r2_status_reference.sql
│   ├── 04_r3_naming_standardization.sql
│   ├── 05_r4_constraints.sql
│   ├── 06_r5_audit_trail.sql
│   └── 07_validation_queries.sql
│
├── PROJECT_FLOW.md
├── README.md
└── Final_Report.docx
2. Project Objectives

The project focuses on:

- Identification of code smells
- SonarQube metric analysis
- Technical debt assessment
- Database smell detection
- Schema normalization up to 3NF
- SQL schema refactoring
- Migration validation and integrity verification

3. Tools and Technologies

- Java Swing
- MySQL 8.0
- SonarQube
- Docker Desktop
- Python
- Graphviz / Draw.io
- GitHub

4. Setup Instructions

Step 1. Start Required Infrastructure

Ensure Docker Desktop is running, then start SonarQube:

bash
docker run -d --name sonarqube -p 9000:9000 sonarqube:lts-community

Ensure MySQL Server 8.0 is installed and running locally.


Step 2. Run SonarQube Analysis

Clone the repository:

bash
git clone https://github.com/Sonia3712/SRE-PROJECT.git

Navigate to the project folder and execute SonarScanner:

bash
sonar-scanner.bat -D"sonar.projectKey=hospital-management-system" -D"sonar.sources=." -D"sonar.host.url=http://localhost:9000" -D"sonar.login=YOUR_TOKEN"

View analysis results at:

http://localhost:9000

Step 3. Open MySQL Command Line

Login to MySQL:

bash
mysql -u root -p

Enter your MySQL password.

Step 4. Execute Legacy Schema Script

Run the legacy schema creation script:

sql
SOURCE sql_scripts/01_create_legacy_tables.sql;

This creates:
- pat_master
- appointments
- doctors
- billing

Step 5. Execute Refactoring Scripts

Run all schema refactoring scripts sequentially:
sql
SOURCE sql_scripts/02_r1_derived_data_refactoring.sql;
sql
SOURCE sql_scripts/03_r2_status_reference.sql;
sql
SOURCE sql_scripts/04_r3_naming_standardization.sql;
sql
SOURCE sql_scripts/05_r4_constraints.sql;
sql
SOURCE sql_scripts/06_r5_audit_trail.sql;

Step 6. Execute Validation Queries

Run migration validation queries:

sql
SOURCE sql_scripts/07_validation_queries.sql;


Validation includes:
- row count verification
- null date validation
- status integrity checks
- orphan record detection

Step 7. Expected Outcomes

Successful execution should produce:

- normalized database schema
- dynamic billing summary view
- enforced PK/FK constraints
- standardized naming conventions
- audit trail support
- validated migration integrity

5. Contributors

- Insbaat Rehan (22F-3656)
- Sonia Jalal (22F-3712)


# Academic Purpose

This repository was created for academic purposes as part of the Software Re-Engineering course project.
