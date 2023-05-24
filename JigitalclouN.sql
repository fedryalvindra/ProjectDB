CREATE DATABASE JigitalclouN;

USE JigitalclouN;

CREATE TABLE MsProcessor(
ProcessorID CHAR(9) PRIMARY KEY CHECK (ProcessorID like 'JCN-P[3-7][1-2][0-9][0-9]') NOT NULL,
ProcessorName VARCHAR(255) NOT NULL,
ProcessorCode VARCHAR(255) NOT NULL,
ProcessorPrice INT NOT NULL,
ProcessorSpeed INT CHECK (ProcessorSpeed BETWEEN 1000 AND 1500) NOT NULL,
ProcessorNum INT CHECK (ProcessorNum BETWEEN 1 AND 24) NOT NULL
)

CREATE TABLE MsMemory(
MemoryID CHAR(9) PRIMARY KEY CHECK(MemoryID like 'JCN-M[3-7][1-2][0-9][0-9]') NOT NULL,
MemoryName VARCHAR(266) NOT NULL,
MemoryCode VARCHAR(255) NOT NULL,
MemoryPrice INT NOT NULL,
MemorySpeed INT CHECK(MemorySpeed BETWEEN 1000 AND 5000) NOT NULL,
MemoryCapacity INT CHECK(MemoryCapacity BETWEEN 1 AND 256) NOT NULL
)

CREATE TABLE MsLocation(
LocationID CHAR(9) PRIMARY KEY CHECK(LocationID like 'JCN-L[3-7][1-2][0-9][0-9]') NOT NULL,
LocationName VARCHAR(255),
LocationCountry VARCHAR(255),
LocationZipcode INT NOT NULL,
LocationLatitude INT CHECK(LocationLatitude BETWEEN -90 AND 90) NOT NULL,
LocationLongitude INT CHECK(LocationLongitude BETWEEN -180 AND 180) NOT NULL
)

CREATE TABLE MsStaff(
StaffID CHAR(9) PRIMARY KEY CHECK(StaffID like 'JCN-S[3-7][1-2][0-9][0-9]') NOT NULL,
StaffName VARCHAR(255) NOT NULL,
StaffGender VARCHAR(255) CHECK (StaffGender IN ('Male', 'Female')) NOT NULL,
StaffEmail VARCHAR(255) CHECK (StaffEmail like '%@gmail.com') NOT NULL,
StaffDate DATE NOT NULL,
StaffPhone CHAR(12) CHECK (StaffPhone like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]') NOT NULL,
StaffAddress VARCHAR(255) NOT NULL,
StaffSalary INT CHECK (StaffSalary BETWEEN 3500000 AND 20000000) NOT NULL
)

CREATE TABLE MsCustomer(
CustomerID CHAR(9) PRIMARY KEY CHECK (CustomerID LIKE 'JCN-C[3-7][1-2][0-9][0-9]') NOT NULL,
CustomerName VARCHAR(255) NOT NULL,
CustomerAge INT CHECK(CustomerAge > 14) NOT NULL, 
CustomerGender VARCHAR(255) CHECK(CustomerGender IN ('Male', 'Female')) NOT NULL,
CustomerEmail VARCHAR(255) CHECK (CustomerEmail like '%gmail.com') NOT NULL,
CustomerDate DATE NOT NULL,
CustomerPhone CHAR(12) CHECK(CustomerPhone LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]') NOT NULL,
CustomerAddress VARCHAR(255) NOT NULL
)

