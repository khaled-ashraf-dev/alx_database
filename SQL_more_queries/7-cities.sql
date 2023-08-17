-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;

-- Switch to the hbtn_0d_usa database
USE hbtn_0d_usa;

-- Create the states table first (referenced table)
CREATE TABLE IF NOT EXISTS states (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(256)
);

-- Create the cities table (referencing the states table)
CREATE TABLE IF NOT EXISTS cities (
  id INT UNIQUE AUTO_INCREMENT NOT NULL PRIMARY KEY,
  state_id INT NOT NULL,
  name VARCHAR(256),
  FOREIGN KEY (state_id) REFERENCES states(id)
);