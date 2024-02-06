CREATE DATABASE IF NOT EXISTS mock_project;

USE mock_project;

SET
  FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS Scholarship;

DROP TABLE IF EXISTS Course;

DROP TABLE IF EXISTS University;

DROP TABLE IF EXISTS Country;

DROP TABLE IF EXISTS EducationLevel;

CREATE TABLE Country (
  country_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  country_name VARCHAR(255) NOT NULL,
  currency VARCHAR(3)
);

CREATE TABLE EducationLevel (
  level_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  level_name VARCHAR(255) NOT NULL
);

CREATE TABLE University (
  university_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  university_name VARCHAR(255) NOT NULL,
  country_id INT NOT NULL,
  FOREIGN KEY (country_id) REFERENCES Country(country_id)
);

CREATE TABLE Course (
  course_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  course_name VARCHAR(255) NOT NULL,
  course_tuition INT,
  course_duration VARCHAR(255),
  university_id INT NOT NULL,
  level_id INT NOT NULL,
  FOREIGN KEY (university_id) REFERENCES University(university_id),
  FOREIGN KEY (level_id) REFERENCES EducationLevel(level_id)
);

CREATE TABLE Scholarship (
  scholarship_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  scholarship_name VARCHAR(255),
  scholarship_promo VARCHAR(255),
  university_id INT NOT NULL,
  level_id INT NOT NULL,
  FOREIGN KEY (university_id) REFERENCES University(university_id),
  FOREIGN KEY (level_id) REFERENCES EducationLevel(level_id)
);