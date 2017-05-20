CREATE TABLE Customer
	(	ssn 		CHAR(9),
		fname 		VARCHAR(25),
		lname 		VARCHAR(25),
		phone 		CHAR(10),
		address 	VARCHAR(50),
		PRIMARY KEY(ssn)
		);
CREATE TABLE Account
	(	acc_no 		CHAR(9),
		balance 	DECIMAL(15,2),
		open_date 	DATE,
		atype 		VARCHAR(10),
		PRIMARY KEY(acc_no)
		);
CREATE TABLE Loan
	(	loan_no 	CHAR(9),
		amount 		DECIMAL(15,2),
		ltype 		VARCHAR(10),
		PRIMARY KEY(loan_no)
		);
CREATE TABLE Owns
	(	ssn 		CHAR(9),
		acc_no 		CHAR(9),
		own_date 	DATE,
		FOREIGN KEY(ssn) REFERENCES Customer(ssn),
		FOREIGN KEY(acc_no) REFERENCES Account(acc_no)
		);
CREATE TABLE Payment
	(	loan_no 	CHAR(9),
		payment_no 	CHAR(4),
		amount 		DECIMAL(15,2),
		method 		VARCHAR(10),
		status 		VARCHAR(10),
		due_date 	DATE,
		PRIMARY KEY(payment_no),
		FOREIGN KEY(loan_no) REFERENCES Loan(loan_no)
		);
CREATE TABLE Borrows
	(	ssn 		CHAR(9),
		loan_no 	CHAR(9),
		FOREIGN KEY(ssn) REFERENCES Customer(ssn),
		FOREIGN KEY(loan_no) REFERENCES Loan(loan_no)
		);