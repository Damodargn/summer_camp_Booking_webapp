🏕️ Summer Camp Sports Enrollment Application
📌 Project Overview

The Summer Camp Sports Enrollment Application is a web-based system that allows parents/students to enroll in multiple sports activities offered during a summer camp.
The application provides a clean user interface for enrollment and a robust backend REST API for handling data storage, validation, and retrieval.

The system supports:

Multiple sports selection per student

Persistent data storage

RESTful APIs

Frontend interaction using JavaScript fetch()

🎯 Features

📝 Student enrollment with personal details

🏀 Multiple sports selection (checkbox-based)

⏰ Session timing selection (Morning / Evening)

📅 Duration-based enrollment

🔄 REST API integration

🗄️ Persistent storage using MySQL

❌ Error handling & validation

🌐 Navigation between Home, Sports, and Enroll pages

🧱 Tech Stack Used
Backend (Mandatory)

Java (Spring Boot – REST APIs)

Spring Web

Spring Data JPA

Hibernate

Database

MySQL (Online Free DB – freesqldatabase.com)

Frontend

HTML

CSS

JavaScript (Vanilla JS)

Tools

ChatGPT

Antigravity IDE

Postman (API Testing)

🗂️ Project Structure
SummerCampEnrollment/
│
├── src/main/java/com/summer
│   ├── controller
│   │   ├── PageController.java
│   │   └── ApiController.java
│   ├── model
│   │   └── Enrollment.java
│   ├── repository
│   │   └── EnrollmentRepository.java
│   └── service
│       └── EnrollmentService.java
│
├── src/main/webapp/WEB-INF/views
│   └── home.jsp
│
├── src/main/resources
│   └── application.properties
│
└── README.md

📡 API Documentation
1️⃣ Enroll Student

Endpoint

POST /api/enroll


Request Body (JSON)

{
  "studentName": "John Doe",
  "age": 12,
  "email": "john@example.com",
  "sessionTiming": "Morning",
  "durationWeeks": 4,
  "sports": ["Football", "Cricket", "Swimming"]
}


Response

{
  "id": 1,
  "studentName": "John Doe",
  "age": 12,
  "email": "john@example.com",
  "sessionTiming": "Morning",
  "durationWeeks": 4,
  "sports": ["Football", "Cricket", "Swimming"]
}

2️⃣ Get All Enrollments

Endpoint

GET /api/enrollments


Response

[
  {
    "id": 1,
    "studentName": "John Doe",
    "age": 12,
    "email": "john@example.com",
    "sessionTiming": "Morning",
    "durationWeeks": 4,
    "sports": ["Football", "Cricket"]
  }
]

🗄️ Database Schema
Table: enrollments
Column Name	Type	Description
id	INT (PK)	Auto-increment primary key
student_name	VARCHAR	Student full name
age	INT	Student age
email	VARCHAR	Email address
session_timing	VARCHAR	Morning / Evening
duration_weeks	INT	Enrollment duration
sports	TEXT	Multiple sports (comma-separated or JSON)
⚙️ application.properties (Sample)
server.port=8080

spring.datasource.url=jdbc:mysql://<HOST>:<PORT>/<DB_NAME>
spring.datasource.username=<USERNAME>
spring.datasource.password=<PASSWORD>

spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQLDialect

spring.mvc.view.prefix=/WEB-INF/views/
spring.mvc.view.suffix=.jsp

▶️ How to Run the Application
Backend

Clone the repository

git clone https://github.com/your-username/summer-camp-enrollment.git


Open project in IDE

Update application.properties with DB credentials

Run Spring Boot application

Server runs on:

http://localhost:8080

Frontend

Open browser and navigate to:

http://localhost:8080/home


Use the Enroll section to submit data

🧪 API Testing (Postman)

Import API manually

Use /api/enroll for POST

Use /api/enrollments for GET

📸 Screenshots

(Add screenshots here)

Home Page

Sports Selection

Enrollment Form

Postman API Response

🚀 Future Enhancements (Bonus)

JWT Authentication

Admin Dashboard

React / Angular frontend

Dockerized deployment

Email confirmation

Payment integration

👨‍💻 Author

Damodar GN
Summer Camp Sports Enrollment Application

If you want, I can also:

✅ Create Postman collection

✅ Generate ER diagram

✅ Convert this to React

✅ Add JWT authentication

✅ Prepare submission-ready screenshots
