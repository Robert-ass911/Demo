CREATE TABLE Patients (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR(255) NOT NULL,
    Surname VARCHAR(255) NOT NULL,
    Patronymic VARCHAR(255) NOT NULL,
    Passport_number INTEGER NOT NULL,
    Passport_series INTEGER NOT NULL,
    Date_of_birth DATE,
    Gender VARCHAR(255) NOT NULL,
    Phone_Number INTEGER NOT NULL,
    Address VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL
);

CREATE TABLE Medical_records (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Medical_card_number INTEGER NOT NULL,
    Date_of_issue_of_the_medical_card DATE,
    Date_of_last_request DATE
    Patient_ID INTEGER NOT NULL,
    FOREIGN KEY (Patient_ID) REFERENCES Patients(ID)
    ON DELETE CASCADE ON UPDATE NO ACTION
);

CREATE TABLE visits (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Date_of_the_next_visit DATE,
    Insurance_policy_number INTEGER NOT NULL,
    The_expiration_date_of_the_insurance_policy DATE,
    Patient_ID INTEGER NOT NULL,
    FOREIGN KEY (Patient_ID) REFERENCES Patients(ID)
    ON DELETE CASCADE ON UPDATE NO ACTION
);

CREATE TABLE Medical_examination (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    FIO VARCHAR(255) NOT NULL,
    Date_of_the_event DATE,
    Doctor VARCHAR(255) NOT NULL,
    Type_of_examination VARCHAR(255) NOT NULL,
    Name_of_the_examination VARCHAR(255) NOT NULL,
    Results VARCHAR(255) NOT NULL,
    Patient_ID INTEGER NOT NULL,
    FOREIGN KEY (Patient_ID) REFERENCES Patients(ID)
    ON DELETE CASCADE ON UPDATE NO ACTION
);
