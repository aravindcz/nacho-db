-- Create database if it doesn't exist
CREATE DATABASE IF NOT EXISTS nacho;

-- Use the nacho database
USE nacho;

-- Create the user table
CREATE TABLE IF NOT EXISTS user (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
);

-- Create the cypher table
CREATE TABLE IF NOT EXISTS cypher (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  location VARCHAR(255),
  happens VARCHAR(255),
  user_id BIGINT NOT NULL,
  CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES user(id)
);

-- Create the profile table
CREATE TABLE IF NOT EXISTS profile (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  user_id BIGINT NOT NULL,
  CONSTRAINT fk_profile_user FOREIGN KEY (user_id) REFERENCES user(id)
);

-- Create the cypher_user join table
CREATE TABLE IF NOT EXISTS cypher_user (
  cypher_id BIGINT NOT NULL,
  user_id BIGINT NOT NULL,
  PRIMARY KEY (cypher_id, user_id),
  CONSTRAINT fk_cypher FOREIGN KEY (cypher_id) REFERENCES cypher(id),
  CONSTRAINT fk_cypher_user FOREIGN KEY (user_id) REFERENCES user(id)
);

