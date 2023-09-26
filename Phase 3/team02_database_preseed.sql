

-- USERS

INSERT INTO cs6400_team02_summer2018.ERMSUser (name, username, password) VALUES ('City of Atlanta','CityAtlanta','hdhGwejmr&');
INSERT INTO cs6400_team02_summer2018.ERMSUser (name, username, password) VALUES ('Fulton County Manager','FultonCountyGA','weiejfs56wG');
INSERT INTO cs6400_team02_summer2018.ERMSUser (name, username, password) VALUES ('State of Georgia','StateOfGeorgia','smdjh&y7y');
INSERT INTO cs6400_team02_summer2018.ERMSUser (name, username, password) VALUES ('Department of the Interior','DeptInterior','1234abcd');
INSERT INTO cs6400_team02_summer2018.ERMSUser (name, username, password) VALUES ('City of Dahlonega, GA','CityDahlonega','Y3n5sfd%5');
INSERT INTO cs6400_team02_summer2018.ERMSUser (name, username, password) VALUES ('Lumpkin County GA','LumpkinCountyGA','P0okmujh&^gb');
INSERT INTO cs6400_team02_summer2018.ERMSUser (name, username, password) VALUES ('State of Tennessee','StateOfTennessee','R0ckyT0p');
INSERT INTO cs6400_team02_summer2018.ERMSUser (name, username, password) VALUES ('State of Alabama','StateOfAlabama','&ygffsd45F');
INSERT INTO cs6400_team02_summer2018.ERMSUser (name, username, password) VALUES ('Dawson County GA','DawsonCountyGA','y6y6y6y6y6y6');
INSERT INTO cs6400_team02_summer2018.ERMSUser (name, username, password) VALUES ('City of Dawsonville, GA','DawsonvilleGA','ddfY9df9y');
INSERT INTO cs6400_team02_summer2018.ERMSUser (name, username, password) VALUES ('Atlanta Fire Dept','AtlantaFire','Ploerikasd');
INSERT INTO cs6400_team02_summer2018.ERMSUser (name, username, password) VALUES ('Atlanta Police Dept','AtlantaPolice','T734hAtes');
INSERT INTO cs6400_team02_summer2018.ERMSUser (name, username, password) VALUES ('Georgia Bureau of Investiation','GBI','toast');
INSERT INTO cs6400_team02_summer2018.ERMSUser (name, username, password) VALUES ('Federal Emergency Management Agency','FEMA_atl','fdsh&^Y3gfwsd');
INSERT INTO cs6400_team02_summer2018.ERMSUser (name, username, password) VALUES ('United State Forest Service','USFS_ga','sadfgh%fasd');
INSERT INTO cs6400_team02_summer2018.ERMSUser (name, username, password) VALUES ('Deptment of Homeland Security','DHS_atl','kjhFGffggg6gfd');
INSERT INTO cs6400_team02_summer2018.ERMSUser (name, username, password) VALUES ('Georgia Fire & Rescue Supplies','GA_FSR','i9hf3^s56rdH');
INSERT INTO cs6400_team02_summer2018.ERMSUser (name, username, password) VALUES ('Gerogia Fire Academy','GeorgiaFireAcad','^tsd23Llknfsdf');
INSERT INTO cs6400_team02_summer2018.ERMSUser (name, username, password) VALUES ('Georgia Pacific','GeoPac','fdnh23sfdajh');
INSERT INTO cs6400_team02_summer2018.ERMSUser (name, username, password) VALUES ('Georgia Power','GeoPow','sfdgkjhg');
INSERT INTO cs6400_team02_summer2018.ERMSUser (name, username, password) VALUES ('Keisha Lance Bottoms','KLBottoms','q3486af(977ggj');
INSERT INTO cs6400_team02_summer2018.ERMSUser (name, username, password) VALUES ('Randall Slaughter','RSlaughter','UjjJjjggfty^6');
INSERT INTO cs6400_team02_summer2018.ERMSUser (name, username, password) VALUES ('Erika Shields','EShields','fd999gfS(nd');

-- Municipality

INSERT INTO cs6400_team02_summer2018.Municipality (username, category) VALUES ('CityAtlanta','City');
INSERT INTO cs6400_team02_summer2018.Municipality (username, category) VALUES ('FultonCountyGA','County');
INSERT INTO cs6400_team02_summer2018.Municipality (username, category) VALUES ('StateOfGeorgia','State');
INSERT INTO cs6400_team02_summer2018.Municipality (username, category) VALUES ('DeptInterior','Country');
INSERT INTO cs6400_team02_summer2018.Municipality (username, category) VALUES ('CityDahlonega','City');
INSERT INTO cs6400_team02_summer2018.Municipality (username, category) VALUES ('LumpkinCountyGA','County');
INSERT INTO cs6400_team02_summer2018.Municipality (username, category) VALUES ('StateOfTennessee','State');
INSERT INTO cs6400_team02_summer2018.Municipality (username, category) VALUES ('StateOfAlabama','State');
INSERT INTO cs6400_team02_summer2018.Municipality (username, category) VALUES ('DawsonCountyGA','Sounty');
INSERT INTO cs6400_team02_summer2018.Municipality (username, category) VALUES ('DawsonvilleGA','City');

-- GovernmentAgency

INSERT INTO cs6400_team02_summer2018.GovernmentAgency (username, agency_name, local_office) VALUES ('AtlantaFire','Atlanta Fire Rescue Department','Atlanta');
INSERT INTO cs6400_team02_summer2018.GovernmentAgency (username, agency_name, local_office) VALUES ('AtlantaPolice','Atlanta Police Department','Atlanta');
INSERT INTO cs6400_team02_summer2018.GovernmentAgency (username, agency_name, local_office) VALUES ('GBI','Georgia Bureau Investigation','Atlanta');
INSERT INTO cs6400_team02_summer2018.GovernmentAgency (username, agency_name, local_office) VALUES ('FEMA_atl','Federal Emergency Management','Sandy Springs');
INSERT INTO cs6400_team02_summer2018.GovernmentAgency (username, agency_name, local_office) VALUES ('USFS_ga','United State Forest Service','Dahlonega');
INSERT INTO cs6400_team02_summer2018.GovernmentAgency (username, agency_name, local_office) VALUES ('DHS_atl','Department Homeland Security','Atlanta');

-- Company

INSERT INTO cs6400_team02_summer2018.Company (username, hq_location, number_of_employees) VALUES ('GA_FSR','Canton, GA',150);
INSERT INTO cs6400_team02_summer2018.Company (username, hq_location, number_of_employees) VALUES ('GeorgiaFireAcad','Forsyth, GA',75);
INSERT INTO cs6400_team02_summer2018.Company (username, hq_location, number_of_employees) VALUES ('GeoPac','Atlanta, GA',40000);
INSERT INTO cs6400_team02_summer2018.Company (username, hq_location, number_of_employees) VALUES ('GeoPow','Atlanta, GA',15000);


--  Individual

INSERT INTO cs6400_team02_summer2018.Individual (username, job_title, hired_date) VALUES ('KLBottoms','Mayor of Atlanta','2018-01-02');
INSERT INTO cs6400_team02_summer2018.Individual (username, job_title, hired_date) VALUES ('RSlaughter','Atlanta Fire Chief','2017-11-03');
INSERT INTO cs6400_team02_summer2018.Individual (username, job_title, hired_date) VALUES ('EShields','Atlanta Police Chief','2015-09-12');

-- dimESF

INSERT INTO cs6400_team02_summer2018.dimESF (ESF_number, ESF_description) VALUES (1,'Transportation');
INSERT INTO cs6400_team02_summer2018.dimESF (ESF_number, ESF_description) VALUES (2,'Communications');
INSERT INTO cs6400_team02_summer2018.dimESF (ESF_number, ESF_description) VALUES (3,'Public Works and Engineering');
INSERT INTO cs6400_team02_summer2018.dimESF (ESF_number, ESF_description) VALUES (4,'Firefighting');
INSERT INTO cs6400_team02_summer2018.dimESF (ESF_number, ESF_description) VALUES (5,'Emergency Management');
INSERT INTO cs6400_team02_summer2018.dimESF (ESF_number, ESF_description) VALUES (6,'Mass Care, Emergency Assistance, Housing, and Human Services');
INSERT INTO cs6400_team02_summer2018.dimESF (ESF_number, ESF_description) VALUES (7,'Logistics Management and Resource Support');
INSERT INTO cs6400_team02_summer2018.dimESF (ESF_number, ESF_description) VALUES (8,'Public Health and Medical Services');
INSERT INTO cs6400_team02_summer2018.dimESF (ESF_number, ESF_description) VALUES (9,'Search and Rescue');
INSERT INTO cs6400_team02_summer2018.dimESF (ESF_number, ESF_description) VALUES (10,'Oil and Hazardous Materials Response');
INSERT INTO cs6400_team02_summer2018.dimESF (ESF_number, ESF_description) VALUES (11,'Agriculture and Natural Resources');
INSERT INTO cs6400_team02_summer2018.dimESF (ESF_number, ESF_description) VALUES (12,'Energy');
INSERT INTO cs6400_team02_summer2018.dimESF (ESF_number, ESF_description) VALUES (13,'Public Safety and Security');
INSERT INTO cs6400_team02_summer2018.dimESF (ESF_number, ESF_description) VALUES (14,'Long-Term Community Recovery');
INSERT INTO cs6400_team02_summer2018.dimESF (ESF_number, ESF_description) VALUES (15,'External Affairs');
 
 -- IncidentTypes
 
INSERT INTO cs6400_team02_summer2018.IncidentTypes (incident_type, incident_type_long) VALUES ('MD','Major Disaster');
INSERT INTO cs6400_team02_summer2018.IncidentTypes (incident_type, incident_type_long) VALUES ('ED','Emergency');
INSERT INTO cs6400_team02_summer2018.IncidentTypes (incident_type, incident_type_long) VALUES ('FM','Fire Management');
INSERT INTO cs6400_team02_summer2018.IncidentTypes (incident_type, incident_type_long) VALUES ('FS','Fire Suppresion');

-- Cost_Unit

INSERT INTO cs6400_team02_summer2018.Cost_Unit (time_unit) VALUES ('Hour');
INSERT INTO cs6400_team02_summer2018.Cost_Unit (time_unit) VALUES ('Day');
INSERT INTO cs6400_team02_summer2018.Cost_Unit (time_unit) VALUES ('Week');

-- ERMSResource

INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'CityAtlanta' , 'Mobile Command Center' , 2 , 'CRM114' , 33.749 , -84.388 , 'Week' , 250 , NULL , 500 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'CityAtlanta' , 'Mobile Command Center' , 2 , 'CRM114' , 33.749 , -84.388 , 'Week' , 250 , NULL , 500 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'CityAtlanta' , 'Mobile Command Center' , 2 , 'CRM114' , 33.749 , -84.388 , 'Week' , 250 , NULL , 500 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'CityAtlanta' , 'Helicopter' , 9 , 'Huey 5' , 33.749 , -84.388 , 'Day' , 400 , NULL , 2000 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'FultonCountyGA' , 'Safety Barriers' , 13 , 'InstaSafe' , 33.8034 , -84.3963 , 'Week' , 100 , NULL , 750 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'StateOfGeorgia' , 'Portable Water Filtration' , 14 , 'GudWatr' , 33.749 , -84.388 , 'Month' , 1200 , NULL , 1000 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'DeptInterior' , 'Oil Spill Remover' , 10 , 'Oil-B-Gone' , 38.9172 , -77.0369 , 'Week' , 750 , NULL , 5000 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'DeptInterior' , 'Temporary Dams' , 3 , 'WaterHoldr' , 38.9172 , -77.0369 , 'Week' , 999 , NULL , 5000 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'CityDahlonega' , 'Fire Engine' , 4 , 'Ford Model 123' , 34.5261 , -83.9844 , 'Day' , 600 , NULL , 125 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'CityDahlonega' , 'Fire Engine' , 4 , 'Ford Model 125' , 34.5261 , -83.9844 , 'Day' , 600 , NULL , 125 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'LumpkinCountyGA' , 'Ambulance' , 8 , 'Chevrolet Ambu-5000' , 34.5814 , -83.9744 , 'Day' , 744 , NULL , 150 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'StateOfTennessee' , 'Logistics Management Thing' , 7 , 'Logistics-R-Us' , 36.1627 , -86.7815 , 'Week' , 400 , NULL , 900 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'StateOfTennessee' , 'Generators' , 12 , 'Powr On' , 36.1627 , -86.7815 , 'Week' , 800 , NULL , 900 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'StateOfAlabama' , 'Railroad Cars' , 1 , 'Trains Cars, Inc.' , 34.7304 , -86.5861 , 'Month' , 500 , NULL , 3000 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'StateOfAlabama' , 'Vaccine-Mobile' , 8 , 'ShotsFired' , 34.7304 , -86.5861 , 'Week' , 425 , NULL , 1200 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'DawsonCountyGA' , 'Fire Engine' , 4 , 'Ford Model 123' , 34.4212 , -84.1191 , 'Day' , 599 , NULL , 200 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'DawsonvilleGA' , 'Fire Engine' , 4 , 'Ford Model 125' , 34.4212 , -84.1191 , 'Day' , 599 , NULL , 200 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'AtlantaFire' , 'Fire Engine' , 4 , 'Ford Model 127' , 33.749 , -84.388 , 'Day' , 750 , NULL , 350 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'AtlantaFire' , 'Fire Engine' , 4 , 'Ford Model 129' , 33.749 , -84.388 , 'Day' , 750 , NULL , 350 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'AtlantaFire' , 'Fire Engine' , 4 , 'Ford Model 131' , 33.749 , -84.388 , 'Day' , 750 , NULL , 350 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'AtlantaFire' , 'Fire Engine' , 4 , 'Ford Model 131' , 33.749 , -84.388 , 'Day' , 750 , NULL , 350 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'AtlantaPolice' , 'Riot Gear' , 13 , 'NoBruze' , 33.749 , -84.388 , 'Week' , 100 , NULL , 400 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'AtlantaPolice' , 'Water Cannon' , 13 , 'SprayAway' , 33.749 , -84.388 , 'Week' , 300 , NULL , 400 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'GBI' , 'Helicopter' , 9 , 'Huey 7' , 33.749 , -84.388 , 'Day' , 500 , NULL , 1200 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'FEMA_atl' , 'Trailer' , 6 , 'PeopleHouser' , 33.749 , -84.388 , 'Month' , 600 , NULL , 3000 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'FEMA_atl' , 'Trailer' , 6 , 'PeopleHouser' , 33.749 , -84.388 , 'Month' , 600 , NULL , 3000 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'FEMA_atl' , 'Emergency Broadcast System' , 5 , 'WeInterrupt' , 33.749 , -84.388 , 'Day' , 50 , NULL , 10000 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'USFS_ga' , 'Helicopter' , 9 , 'Lewis Interceptor' , 34.6272 , -84.1939 , 'Day' , 400 , NULL , 2500 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'USFS_ga' , 'Fire Break Tools' , 4 , 'AxeMeNoQuestions' , 34.6272 , -84.1939 , 'Week' , 175 , NULL , 400 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'USFS_ga' , 'Tanker' , 4 , 'DropInAnytime' , 34.6272 , -84.1939 , 'Day' , 800 , NULL , 800 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'DHS_atl' , 'Riot Gear' , 13 , 'NoBruze 2.0' , 33.749 , -84.388 , 'Week' , 125 , NULL , 500 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'GA_FSR' , 'BullHorn' , 5 , 'Project Voice' , 34.2123 , -86.1324 , 'Week' , 75 , NULL , 160 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'GA_FSR' , 'Infrared Camera' , 9 , 'NiteVision' , 34.2123 , -86.1324 , 'Day' , 250 , NULL , 600 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'GeoPow' , 'Generators' , 12 , 'Powr On' , 31.1347 , -85.4472 , 'Week' , 900 , NULL , 1200 , 'Available');
INSERT INTO cs6400_team02_summer2018.ERMSResource (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status) VALUES ( 'GeoPac' , 'Maps' , 11 , 'GloboMap' , 30.1637 , -91.014 , 'Month' , 25 , NULL , 600 , 'Available');

-- Capabilities
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (1, 'radio' );
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (1, 'emergency lighting' );	
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (1, 'exterior monitors' );	
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (1, 'surveillance cameras  ' );	
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (2, 'radio' );	
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (2, 'emergency lighting' );	
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (2, 'exterior monitors' );	
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (2, 'surveillance cameras  ' );	
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (3, 'radio' );	
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (3, 'emergency lighting' );	
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (3, 'exterior monitors' );	
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (3, 'surveillance cameras  ' );	
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (4, '3 hr flying time without refuel' );	
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (4, 'infrared camera' );	
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (4, 'seats 4' );
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (6, 'serves up to 150 people per day (not including laundry)' );	
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (6, 'filters particulates > 5 micro meters' );			
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (7, 'for spills up to 150k gallons' );				
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (8, 'polystyrene cofferdam' );				
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (9, '500 gallons of water' );
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (9, 'ladder' );
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (10, '600 gallons of water' );
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (10, 'ladder' );			
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (12, 'manages logistics in a strategic manner' );				
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (13, '50 kW capacity' );
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (13, 'gasoline powered' );			
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (14, 'flatbed' );
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (14, 'loading straps' );
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (14, 'standard gauge' );		
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (15, 'flu' );
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (15, 'hepatitus' );
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (15, 'measles' );
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (15, 'tetnus' );
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (15, 'west nile' );
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (16, '500 gallons of water' );
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (16, 'ladder' );			
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (17, '600 gallons of water' );
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (17, 'ladder' );			
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (18, '600 gallons of water' );
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (18, 'ladder' );			
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (19, '600 gallons of water' );
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (19, 'ladder' );			
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (20, '600 gallons of water' );
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (20, 'ladder' );			
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (21, '600 gallons of water' );
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (21, 'ladder' );			
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (22, 'helmet protect against thrown projectiles' );				
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (23, 'less than lethal' );
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (23, 'sonic alarm' );			
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (24, '5 hour flying time' );
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (24, 'seats 5' );			
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (25, 'single family, no pets' );				
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (26, 'single family, no pets' );				
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (27, 'alerts on all public broadcast channels' );
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (29, 'disk' );
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (29, 'plows' );
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (29, 'rototiller' );
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (29, 'bulldozer' );
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (29, 'grader' );
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (30, '1000 gallon capacity, water only' );				
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (31, 'helmet protect against thrown projectiles' );				
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (32, 'voice amplification for crowd control' );				
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (33, 'can detect temperature differentials of less than 1 degree centrigrade' );				
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (34, '60 kW' );
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (34, 'diesel powered' );			
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (35, 'topological' );
INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES (35, 'digital and paper available' );			

-- AdditionalESF

INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (1, 13 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (1, 7 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (1, 15 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (2, 13 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (2, 7 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (2, 15 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (3, 13 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (3, 7 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (3, 15 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (4, 1 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (6, 6 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (7, 13 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (8, 13 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (8, 10 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (11, 6 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (12, 2 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (12, 13 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (13, 13 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (13, 6 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (13, 3 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (14, 7 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (15, 13 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (15, 5 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (22, 5 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (23, 5 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (24, 1 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (24, 13 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (25, 8 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (26, 8 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (27, 2 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (27, 13 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (27, 15 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (28, 1 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (29, 3 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (31, 5 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (32, 13 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (33, 13 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (34, 13 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (34, 6 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (34, 3 );
INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES (35, 9 );


-- Incident_DECL

INSERT INTO cs6400_team02_summer2018.Incident_DECL (incident_number, incident_type) VALUES ( 1 , 'MD' );
INSERT INTO cs6400_team02_summer2018.Incident_DECL (incident_number, incident_type) VALUES ( 1 , 'FS' );
INSERT INTO cs6400_team02_summer2018.Incident_DECL (incident_number, incident_type) VALUES ( 1 , 'FM' );
INSERT INTO cs6400_team02_summer2018.Incident_DECL (incident_number, incident_type) VALUES ( 1 , 'ED' );
INSERT INTO cs6400_team02_summer2018.Incident_DECL (incident_number, incident_type) VALUES ( 2 , 'MD' );
INSERT INTO cs6400_team02_summer2018.Incident_DECL (incident_number, incident_type) VALUES ( 2 , 'FS' );
INSERT INTO cs6400_team02_summer2018.Incident_DECL (incident_number, incident_type) VALUES ( 3 , 'FS' );
INSERT INTO cs6400_team02_summer2018.Incident_DECL (incident_number, incident_type) VALUES ( 4 , 'FS' );

-- Incident

INSERT INTO cs6400_team02_summer2018.Incident (incident_number, incident_type, incident_owner, incident_date, incident_description, latitude, longitude) VALUES ( 1 , 'ED' , 'CityAtlanta' , '2016-10-31' , 'Halloween Riots' , 33.7785 , -84.3989);
INSERT INTO cs6400_team02_summer2018.Incident (incident_number, incident_type, incident_owner, incident_date, incident_description, latitude, longitude) VALUES ( 1 , 'MD' , 'StateOfTennessee' , '2017-05-05' , 'Hiwassee Lake flooding' , 35.1492 , -84.1841);
INSERT INTO cs6400_team02_summer2018.Incident (incident_number, incident_type, incident_owner, incident_date, incident_description, latitude, longitude) VALUES ( 1 , 'FM' , 'USFS_ga' , '2017-07-29' , 'Fire on edge of Unicoi State Park' , 36.1954 , -82.3496);
INSERT INTO cs6400_team02_summer2018.Incident (incident_number, incident_type, incident_owner, incident_date, incident_description, latitude, longitude) VALUES ( 1 , 'FS' , 'DeptInterior' , '2017-08-30' , 'Fire around Standing Indian Mountain' , 35.0356 , -83.5381);
INSERT INTO cs6400_team02_summer2018.Incident (incident_number, incident_type, incident_owner, incident_date, incident_description, latitude, longitude) VALUES ( 2 , 'MD' , 'StateOfGeorgia' , '2018-03-12' , 'Belair Fault Earthquake in Martinez, GA' , 33.5174 , -82.0757);
INSERT INTO cs6400_team02_summer2018.Incident (incident_number, incident_type, incident_owner, incident_date, incident_description, latitude, longitude) VALUES ( 2 , 'FS' , 'FultonCountyGA' , '2018-07-04' , 'Fourth of July Fireworks fire in Sandy Springs, GA' , 33.9304 , -84.3733);
INSERT INTO cs6400_team02_summer2018.Incident (incident_number, incident_type, incident_owner, incident_date, incident_description, latitude, longitude) VALUES ( 3 , 'FS' , 'CityDahlonega' , '2018-07-09' , 'Lightning Strike fire in Chattahoochee Natl Forest' , 34.689 , -84.0221);
INSERT INTO cs6400_team02_summer2018.Incident (incident_number, incident_type, incident_owner, incident_date, incident_description, latitude, longitude) VALUES ( 4 , 'FS' , 'USFS_ga' , '2018-07-15' , 'Fire in Oconee Natl Forest' , 33.6629 , -83.2854);

-- Request

INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('CityAtlanta' , 'CityAtlanta' , 1 , 'ED' , 2, '2016-10-31' , '2016-11-05', '2016-11-02', '2016-10-31');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('CityAtlanta' , 'CityAtlanta' , 1 , 'ED' , 3, '2016-10-31' , '2016-11-05', '2016-11-02', '2016-10-31');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('CityAtlanta' , 'CityAtlanta' , 1 , 'ED' , 4, '2016-10-31' , '2016-11-05', '2016-11-02', '2016-10-31');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('CityAtlanta' , 'AtlantaPolice' , 1 , 'ED' , 24, '2016-10-31' , '2016-11-05', '2016-11-01', '2016-10-31');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('CityAtlanta' , 'AtlantaPolice' , 1 , 'ED' , 23, '2016-10-31' , '2016-11-05', '2016-11-01', '2016-10-31');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('StateOfTennessee' , 'StateOfTennessee' , 1 , 'MD' , 13, '2017-05-05' , '2017-05-15','2017-05-20', '2017-05-05');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('StateOfTennessee' , 'StateOfTennessee' , 1 , 'MD' , 14, '2017-05-05' , '2017-05-15', '2017-05-21', '2017-05-05');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('StateOfTennessee' , 'DeptInterior' , 1 , 'MD' , 9, '2017-05-05' , '2017-05-15','2017-05-20', '2017-05-07');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('USFS_ga' , 'USFS_ga' , 1 , 'FM' , 29, '2017-07-29' , '2017-08-15', '2017-08-21', '2017-07-29');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('USFS_ga' , 'USFS_ga' , 1 , 'FM' , 30, '2017-07-29' , '2017-08-15','2017-08-21', '2017-07-29');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('USFS_ga' , 'USFS_ga' , 1 , 'FM' , 31, '2017-07-29' , '2017-08-15', '2017-08-21', '2017-07-29');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('USFS_ga' , 'FEMA_atl' , 1 , 'FM' , 28, '2017-07-29' , '2017-08-15','2017-08-05', '2017-07-30');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('USFS_ga' , 'CityAtlanta' , 1 , 'FM' , 2, '2017-07-29' , '2017-08-15', '2017-08-10', '2017-08-01');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('DeptInterior' , 'USFS_ga' , 1 , 'FS' , 30, '2017-08-30' , '2017-09-14', '2017-09-14', '2017-09-01');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('DeptInterior' , 'USFS_ga' , 1 , 'FS' , 31, '2017-08-30' , '2017-09-14', '2017-09-20', '2017-09-01');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('StateOfGeorgia' , 'StateOfGeorgia' , 2 , 'MD' , 6, '2018-03-12' , '2018-09-01', NULL, '2018-03-12');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('StateOfGeorgia' , 'StateOfAlabama' , 2 , 'MD' , 16, '2018-03-12' , '2018-09-01', NULL, '2018-03-14');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('StateOfGeorgia' , 'FEMA_atl' , 2 , 'MD' , 28, '2018-03-12' , '2018-04-01', '2018-03-31', '2018-03-13');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('StateOfGeorgia' , 'GeoPow' , 2 , 'MD' , 35, '2018-03-13' , '2018-09-01', NULL, '2018-03-14');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('StateOfGeorgia' , 'StateOfTennessee' , 2 , 'MD' , 14, '2018-03-13' , '2018-09-01', NULL, '2018-03-15');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('StateOfGeorgia' , 'CityAtlanta' , 2 , 'MD' , 5, '2018-03-13' , '2018-03-31', '2018-04-05', '2018-03-14');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('FultonCountyGA' , 'StateOfGeorgia' , 2 , 'FS' , 6, '2018-07-04' , '2018-08-31', NULL, NULL);
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('FultonCountyGA' , 'DawsonCountyGA' , 2 , 'FS' , 17, '2018-07-05' , '2018-08-15', NULL, '2018-07-05');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('FultonCountyGA' , 'DawsonvilleGA' , 2 , 'FS' , 18, '2018-07-05' , '2018-08-15', NULL, '2018-07-05');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('FultonCountyGA' , 'AtlantaFire' , 2 , 'FS' , 19, '2018-07-04' , '2018-08-31', NULL, '2018-07-04');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('FultonCountyGA' , 'AtlantaFire' , 2 , 'FS' , 20, '2018-07-04' , '2018-08-31', NULL, '2018-07-04');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('FultonCountyGA' , 'AtlantaFire' , 2 , 'FS' , 21, '2018-07-04' , '2018-08-31', NULL, '2018-07-04');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('FultonCountyGA' , 'AtlantaFire' , 2 , 'FS' , 22, '2018-07-04' , '2018-08-31', NULL, NULL);
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('FultonCountyGA' , 'USFS_ga' , 2 , 'FS' , 29, '2018-07-05' , '2018-08-31', NULL, '2017-07-06');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('FultonCountyGA' , 'USFS_ga' , 2 , 'FS' , 30, '2018-07-05' , '2018-08-31', NULL, '2018-07-06');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('FultonCountyGA' , 'USFS_ga' , 2 , 'FS' , 31, '2018-07-05' , '2018-08-31', NULL, '2018-07-06');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('FultonCountyGA' , 'CityAtlanta' , 2 , 'FS' , 2, '2018-07-05' , '2018-08-31', NULL, '2017-07-06');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('FultonCountyGA' , 'CityAtlanta' , 2 , 'FS' , 3, '2018-07-05' , '2018-08-31', NULL, '2017-07-06');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('CityDahlonega' , 'CityDahlonega' , 3 , 'FS' , 10, '2018-07-09' , '2018-08-15', NULL, '2018-07-09');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('CityDahlonega' , 'CityDahlonega' , 3 , 'FS' , 11, '2018-07-09' , '2018-08-15', NULL, '2018-07-09');
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('CityDahlonega' , 'AtlantaFire' , 3 , 'FS' , 19, '2018-07-09' , '2018-08-15', NULL, NULL);
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('CityDahlonega' , 'AtlantaFire' , 3 , 'FS' , 20, '2018-07-09' , '2018-08-15', NULL, NULL);
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('CityDahlonega' , 'USFS_ga' , 3 , 'FS' , 29, '2018-07-09' , '2018-08-15', NULL, NULL);
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('CityDahlonega' , 'USFS_ga' , 3 , 'FS' , 28, '2018-07-09' , '2018-08-15', NULL, NULL);
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('CityDahlonega' , 'USFS_ga' , 3 , 'FS' , 30, '2018-07-09' , '2018-08-15', NULL, NULL);
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('CityDahlonega' , 'USFS_ga' , 3 , 'FS' , 31, '2018-07-09' , '2018-08-15', NULL, NULL);
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('CityDahlonega' , 'CityAtlanta' , 3 , 'FS' , 2, '2018-07-09' , '2018-08-15', NULL, NULL);
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('CityDahlonega' , 'CityAtlanta' , 3 , 'FS' , 3, '2018-07-09' , '2018-08-15', NULL, NULL);
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('USFS_ga' , 'USFS_ga' , 4 , 'FS' , 29, '2018-07-15' , '2018-08-30', NULL, NULL);
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('USFS_ga' , 'USFS_ga' , 4 , 'FS' , 30, '2018-07-15' , '2018-08-30', NULL, NULL);
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('USFS_ga' , 'USFS_ga' , 4 , 'FS' , 31, '2018-07-15' , '2018-08-30', NULL, NULL);
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('USFS_ga' , 'CityAtlanta' , 4 , 'FS' , 2, '2018-07-15' , '2018-08-30', NULL, NULL);
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('USFS_ga' , 'CityAtlanta' , 4 , 'FS' , 3, '2018-07-15' , '2018-08-30', NULL, NULL);
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('USFS_ga' , 'CityDahlonega' , 4 , 'FS' , 10, '2018-07-15' , '2018-08-30', NULL, NULL);
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('USFS_ga' , 'CityDahlonega' , 4 , 'FS' , 11, '2018-07-15' , '2018-08-30', NULL, NULL);
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('USFS_ga' , 'AtlantaFire' , 4 , 'FS' , 19, '2018-07-15' , '2018-08-30', NULL, NULL);
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('USFS_ga' , 'AtlantaFire' , 4 , 'FS' , 20, '2018-07-15' , '2018-08-30', NULL, NULL);
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('USFS_ga' , 'AtlantaFire' , 4 , 'FS' , 21, '2018-07-15' , '2018-08-30', NULL, NULL);
INSERT INTO cs6400_team02_summer2018.Request (incident_owner, resource_owner, incident_number, incident_type, resource_id, request_start_date, exp_return_date, actual_return_date, date_request_accepted) VALUES ('USFS_ga' , 'AtlantaFire' , 4 , 'FS' , 22, '2018-07-15' , '2018-08-30', NULL, NULL);

-- ERMSResource In Use Resources - update to show In Use
UPDATE cs6400_team02_summer2018.ERMSResource set date_deployed = '2018-03-12', Status = 'In Use' where resource_id =6;
UPDATE cs6400_team02_summer2018.ERMSResource set date_deployed = '2018-03-14', Status = 'In Use' where resource_id =16;
UPDATE cs6400_team02_summer2018.ERMSResource set date_deployed = '2018-03-14', Status = 'In Use' where resource_id =35;
UPDATE cs6400_team02_summer2018.ERMSResource set date_deployed = '2018-03-15', Status = 'In Use' where resource_id =14;
UPDATE cs6400_team02_summer2018.ERMSResource set date_deployed = '2018-07-05', Status = 'In Use' where resource_id =18;
UPDATE cs6400_team02_summer2018.ERMSResource set date_deployed = '2018-07-04', Status = 'In Use' where resource_id =19;
UPDATE cs6400_team02_summer2018.ERMSResource set date_deployed = '2018-07-04', Status = 'In Use' where resource_id =20;
UPDATE cs6400_team02_summer2018.ERMSResource set date_deployed = '2018-07-04', Status = 'In Use' where resource_id =21;
UPDATE cs6400_team02_summer2018.ERMSResource set date_deployed = '2017-07-06', Status = 'In Use' where resource_id =29;
UPDATE cs6400_team02_summer2018.ERMSResource set date_deployed = '2018-07-06', Status = 'In Use' where resource_id =30;
UPDATE cs6400_team02_summer2018.ERMSResource set date_deployed = '2018-07-06', Status = 'In Use' where resource_id =31;
UPDATE cs6400_team02_summer2018.ERMSResource set date_deployed = '2017-07-06', Status = 'In Use' where resource_id =2;
UPDATE cs6400_team02_summer2018.ERMSResource set date_deployed = '2017-07-06', Status = 'In Use' where resource_id =3;
UPDATE cs6400_team02_summer2018.ERMSResource set date_deployed = '2018-07-09', Status = 'In Use' where resource_id =10;
UPDATE cs6400_team02_summer2018.ERMSResource set date_deployed = '2018-07-09', Status = 'In Use' where resource_id =11;

