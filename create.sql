CREATE TABLE Company(
    company VARCHAR2(250) NOT NULL);
ALTER TABLE Company
    ADD CONSTRAINT company_pk PRIMARY KEY(company);    

CREATE TABLE Chocolate(
    bar_id NUMBER(16) NOT NULL,
    bar_name VARCHAR2(250) NOT NULL,
    company VARCHAR2(250) NOT NULL,
    bean_type VARCHAR2(250),
    cocoa_perc VARCHAR2(250) NOT NULL);
ALTER TABLE Chocolate
    ADD CONSTRAINT bar_id_pk PRIMARY KEY(bar_id);
    
ALTER TABLE Chocolate
    ADD CONSTRAINT company_fk FOREIGN KEY(company) REFERENCES Company(company);
