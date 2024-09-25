show databases;
create database Student_Management;
use Student_Management;
create table Student_management.user_login(
User_Id int primary key,
User_Password text,
First_Name text,
Last_Name text,
Sign_Up date,
Email_Id text);
Create table Student_management.parent_details(
Parent_Id int primary key,
Father_First_Name text,
Father_Last_Name text,
Father_Email_Id text,
Father_Mobile_Number int,
Father_Occupation text,
Mother_First_Name text,
Mother_Last_Name text,
Mother_Email_Id text,
Mother_Mobile_Number int,
Mother_Occupation text);
create table Student_management.teachers (
	teacher_id int primary key,
    first_name text,
	last_name text,
	date_of_birth date,
	email_id text,
	contact text,
	registration_date date,
	registration_id text );
create table student_management.class_details (
	class_id int primary key,
    class_teacher text references student_management.teachers (teacher_id),
	class_year text);
create table student_management.student_details (
	student_id int primary key,
    first_name text,
	last_name text,
	date_of_birth date,
	class_id text references student_management.class_details (class_id),
	roll_no text,
	email_id text,
	parent_id text references student_management.parent_details (parent_id),
	registration_date date,
	registration_id text);
create table student_management.subject (
	subject_id int primary key,
    subject_name text,
	class_year text,
	subject_head text references student_management.teachers (teacher_id));
create table student_management.subject_tutors (
    row_id serial primary key,
    subject_id int references student_management.subject (subject_id),
    teacher_id int references teachers (teacher_id),
    class_id int references student_management.class_details (class_id));
SHOW TABLES;
select *from Student_management.class_details;




















