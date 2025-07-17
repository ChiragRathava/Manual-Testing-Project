-- Create database
CREATE DATABASE IF NOT EXISTS thetestacademy;
USE thetestacademy;

-- Create Students table
CREATE TABLE Students (
    id bigint NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    age int(2) NOT NULL,
    phone int(10) NOT NULL,
    PRIMARY KEY(id)
);

-- Create Courses table
CREATE TABLE Courses (
    id bigint NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    price int,
    PRIMARY KEY (id)
);

-- Create StudentCourses table (junction table)
CREATE TABLE StudentCourses (
    StudentId bigint NOT NULL,
    CourseId bigint NOT NULL
);
