-- Drop tables if they exist
DROP TABLE IF EXISTS neighborhood CASCADE;
DROP TABLE IF EXISTS crime CASCADE;
DROP TABLE IF EXISTS home_value CASCADE;

CREATE TABLE neighborhood (
    id INT PRIMARY KEY,
    neighborhood VARCHAR(255),
    population_2010 INT
);

CREATE TABLE crime (
    id INT PRIMARY KEY,
    neighborhood_id INT,
    crime_description VARCHAR(255),
    latitude NUMERIC(13),
    longitude NUMERIC(13),
    FOREIGN KEY (neighborhood_id) REFERENCES neighborhood (id)
);

CREATE TABLE home_value (
    id INT PRIMARY KEY,
    neighborhood_id INT,
    property_type VARCHAR(255),
    num_bedrooms INT,
    below_grade_sq_footage INT,
    above_grade_sq_footage INT,
    sq_footage_parcel INT,
    address VARCHAR(255),
    landuse VARCHAR(255),
    value_total MONEY,
    sq_footage_house INT,
    value_per_sq_foot MONEY,
    FOREIGN KEY (neighborhood_id) REFERENCES neighborhood (id)
);
