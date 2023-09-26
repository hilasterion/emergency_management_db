


-- CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password';
CREATE USER IF NOT EXISTS gatechUser@localhost IDENTIFIED BY 'gatech123';

DROP DATABASE IF EXISTS cs6400_team02_summer2018; 
SET default_storage_engine=InnoDB;
SET NAMES utf8mb4;

CREATE DATABASE IF NOT EXISTS cs6400_team02_summer2018 
    DEFAULT CHARACTER SET utf8mb4 
    DEFAULT COLLATE utf8mb4_unicode_ci;
USE cs6400_team02_summer2018;

GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON *.* TO 'gatechUser'@'localhost';
GRANT ALL PRIVILEGES ON `gatechuser`.* TO 'gatechUser'@'localhost';
GRANT ALL PRIVILEGES ON `cs6400_team02_summer2018`.* TO 'gatechUser'@'localhost';
FLUSH PRIVILEGES;




/*changed from User since USER is an SQL reserved word*/
CREATE TABLE cs6400_team02_summer2018.ERMSUser ( 
  name     varchar(75) NOT NULL,
  username varchar(30) NOT NULL,
  password varchar(16) NOT NULL, 
  PRIMARY KEY (username)
);


CREATE TABLE cs6400_team02_summer2018.Municipality (
  username varchar(30) NOT NULL,
  category varchar(7)  NOT NULL,
  PRIMARY KEY (username)
);

CREATE TABLE cs6400_team02_summer2018.GovernmentAgency (
  username varchar(30)      NOT NULL,
  agency_name varchar(30)   NOT NULL,
  local_office varchar(30)  NOT NULL,
  PRIMARY KEY (username)
);

CREATE TABLE cs6400_team02_summer2018.Company (
  username            varchar(30)  NOT NULL,
  hq_location         varchar(30)  NOT NULL,
  number_of_employees int(16)      NOT NULL,
  PRIMARY KEY (username)
);

CREATE TABLE cs6400_team02_summer2018.Individual (
  username   varchar(30) NOT NULL,
  job_title  varchar(30) NOT NULL,
  hired_date datetime    NOT NULL,
  PRIMARY KEY (username)
);

/* changed from Resource since RESOURCE is an SQL reserved word */
CREATE TABLE cs6400_team02_summer2018.ERMSResource (          
  resource_id         int(16)      NOT NULL AUTO_INCREMENT,
  resource_owner      varchar(30)  NOT NULL,
  resource_name       varchar(30)  NOT NULL,
  primary_ESF_number  int(16)      NOT NULL,
  model               varchar(30)  NOT NULL,
  latitude            decimal(7,4) NOT NULL,
  longitude           decimal(7,4) NOT NULL,
  time_unit           varchar(10)  NOT NULL,
  dollars             int(16)      NOT NULL,
  date_deployed       datetime         NULL, 
  max_distance        int(16)      NOT NULL,
  status              varchar(9)   NOT NULL,
  PRIMARY KEY (resource_id)
);


CREATE TABLE cs6400_team02_summer2018.dimESF (
  ESF_number         int(16)     NOT NULL,
  ESF_description    varchar(75) NOT NULL,
  PRIMARY KEY (ESF_number)
);


CREATE TABLE cs6400_team02_summer2018.AdditionalESF (
  resource_id              int(16)     NOT NULL,
  additional_ESF_number    int(16)     NOT NULL,
  CONSTRAINT Additional_ESF_Constraint UNIQUE (resource_id,additional_ESF_number)
);

CREATE TABLE cs6400_team02_summer2018.Capabilities (
  resource_id              int(16)     NOT NULL,
  capability               varchar(75) NOT NULL,
  CONSTRAINT Capabilities_Constraint UNIQUE (resource_id,capability)
);

CREATE TABLE cs6400_team02_summer2018.Incident_DECL (
  incident_number        int(16)      NOT NULL,
  incident_type          varchar(10)  NOT NULL,
 CONSTRAINT Incident_DECL_Constraint UNIQUE (incident_number,incident_type)
 );


CREATE TABLE cs6400_team02_summer2018.Incident (
  incident_number        int(16)      NOT NULL,
  incident_type          varchar(10)  NOT NULL,
  incident_owner         varchar(30)  NOT NULL,
  incident_date          datetime     NOT NULL,
  incident_description   varchar(50)  NOT NULL,
  latitude               decimal(7,4) NOT NULL,
  longitude              decimal(7,4) NOT NULL,
  PRIMARY KEY (incident_type ,incident_number)
);


CREATE TABLE cs6400_team02_summer2018.Request (
  request_id             int(16)      NOT NULL AUTO_INCREMENT, -- this is a surrogate key and not needed for phase II, but I included anyway
  incident_owner         varchar(30)  NOT NULL,                -- AKA requesting USER
  resource_owner         varchar(30)  NOT NULL,
  incident_number        int(16)      NOT NULL,
  incident_type          varchar(10)  NOT NULL,
  resource_id            int(16)      NOT NULL,
  request_start_date	 datetime	  NOT NULL,  
  exp_return_date        datetime     NOT NULL,
  next_available         datetime     NOT NULL,               -- not sure how this is different from exp_return_date
  actual_return_date     datetime         NULL,               -- this was not in EER, but may be useful as flag to determine if request is complete
  date_request_accepted  datetime         NULL,               -- this was not in the EER, but I copied the way he did Friend Requests in the case study
                                                              -- in any case, we need some way to identifing the open requests vs active and completed 
  PRIMARY KEY (request_id)
);

/*
Rationale for IncidentTypes table:
	Although these are the initial incident declarations, the system must allow the addition of
	new incident declarations in the future. For this project, we do not need to worry about
	functionality to add new declarations programmatically, but you want to be able to add new
	declarations behind the scenes.
*/
CREATE TABLE cs6400_team02_summer2018.IncidentTypes (
  incident_type           varchar(10) NOT NULL,
  incident_type_long      varchar(30) NOT NULL,
  CONSTRAINT IncidentTypeConstraint UNIQUE (incident_type, incident_type_long)
);

CREATE TABLE cs6400_team02_summer2018.Cost_Unit (
    time_unit           varchar(10)  NOT NULL
);



ALTER TABLE Municipality
  ADD CONSTRAINT fk_Municipality_username_ERMSUser_username 
  FOREIGN KEY (username) REFERENCES ERMSUser (username);

ALTER TABLE GovernmentAgency
  ADD CONSTRAINT fk_GovernmentAgency_username_ERMSUser_username 
  FOREIGN KEY (username) REFERENCES ERMSUser (username);

ALTER TABLE Company
  ADD CONSTRAINT fk_Company_username_ERMSUser_username 
  FOREIGN KEY (username) REFERENCES ERMSUser (username);

ALTER TABLE Individual
  ADD CONSTRAINT fk_Individual_username_ERMSUser_username 
  FOREIGN KEY (username) REFERENCES ERMSUser (username);

ALTER TABLE ERMSResource
  ADD CONSTRAINT fk_ERMSResource_resource_owner_ERMSUser_username 
  FOREIGN KEY (resource_owner) REFERENCES ERMSUser (username);

ALTER TABLE ERMSResource
  ADD CONSTRAINT fk_ERMSResource_primary_ESF_number_dimESF_ESF_number 
  FOREIGN KEY (primary_ESF_number) REFERENCES dimESF (ESF_number);
 
ALTER TABLE AdditionalESF
  ADD CONSTRAINT fk_AdditionalESF_resource_id_ERMSResource_resource_id 
  FOREIGN KEY (resource_id) REFERENCES ERMSResource (resource_id);
 
ALTER TABLE AdditionalESF
  ADD CONSTRAINT fk_AdditionalESF_additional_ESF_number_dimESF_ESF_number 
  FOREIGN KEY (additional_ESF_number) REFERENCES dimESF (ESF_number);
  
ALTER TABLE Capabilities
  ADD CONSTRAINT fk_Capabilities_resource_id_ERMSResourceF_resource_id 
  FOREIGN KEY (resource_id) REFERENCES ERMSResource (resource_id);
  
 ALTER TABLE Incident
  ADD CONSTRAINT fk_Incident_incident_owner_ERMSUser_username 
  FOREIGN KEY (incident_owner) REFERENCES ERMSUser (username);

ALTER TABLE Incident
  ADD CONSTRAINT fk_Incident_incident_type_IncidentType_incident_type
  FOREIGN KEY (incident_type) REFERENCES IncidentTypes (incident_type);
 
ALTER TABLE Request
  ADD CONSTRAINT fk_Request_resource_owner_ERMSResource_resource_owner 
  FOREIGN KEY (resource_owner) REFERENCES ERMSResource (resource_owner);
 
ALTER TABLE Request
  ADD CONSTRAINT fk_Request_owner_incident_Incident_incident_owner 
  FOREIGN KEY (incident_owner) REFERENCES Incident (incident_owner);

ALTER TABLE Request
  ADD CONSTRAINT fk_Request_resource_id_ERMSResource_resource_id
  FOREIGN KEY (resource_id) REFERENCES ERMSResource (resource_id);

ALTER TABLE Request
  ADD CONSTRAINT fk_Request_incidentID_Incident_incidentID
  FOREIGN KEY (incident_type ,incident_number) REFERENCES Incident (incident_type ,incident_number);

  