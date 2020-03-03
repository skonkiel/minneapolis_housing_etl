-- Drop tables if they exist
DROP TABLE IF EXISTS neighborhood CASCADE;
DROP TABLE IF EXISTS crime CASCADE;
DROP TABLE IF EXISTS home_value CASCADE;

CREATE TABLE neighborhood (
    id INT PRIMARY KEY,
    neighborhood VARCHAR(30), 
    population INT
);

CREATE TABLE crime (
    id INT PRIMARY KEY,
    neighborhood_id INT,
    crime_description VARCHAR(30),
    latitude VARCHAR(15),
    longitude VARCHAR(15),
    x VARCHAR(15),
    y VARCHAR(15),
    FOREIGN KEY (neighborhood_id) REFERENCES neighborhood (id)
);

CREATE TABLE home_value (
    id INT PRIMARY KEY,
    neighborhood_id INT,
    property_type VARCHAR(30),
    num_bedrooms INT,
    sq_footage_house INT,
    sq_footage_parcel INT,
    address VARCHAR(100),
    value_total INT,
    x VARCHAR(15),
    y VARCHAR(15),
    FOREIGN KEY (neighborhood_id) REFERENCES neighborhood (id)
);