# 🏆 Summer Camp Sports Enrollment Application

## 📌 Project Overview

The **Summer Camp Sports Enrollment Application** is a full‑stack web application that allows parents or students to enroll in multiple sports activities offered during a summer camp.
The system supports **multiple sport selection**, session timing, and duration plans, with a clean UI and REST‑based backend.

This project is built as part of an academic/assignment submission and follows proper backend–frontend separation, validations, and API‑based communication.

---

## 🧱 Tech Stack Used

### Backend

* **Java (Spring Boot – PostMan APIs)**
* **Spring MVC**
* **Spring Data JPA**
* **Json (JSON Serialization)**

### Database

* **MySQL** (Free online database – e.g. freesqldatabase.com)

### Frontend

* **HTML5**
* **CSS3**
* **Vanilla JavaScript (Fetch API)**
* **JSP (View Rendering)**

### Tools

* **Postman** – API testing
* **GitHub** – Version control
* **ChatGPT / Antigravity IDE** – Development assistance

---

## ✨ Features

* Enroll students into **multiple sports at once**
* Clean and modern UI with navigation (Home / Sports / Enroll)
* REST‑based backend APIs
* JSON‑based communication
* Input validation on frontend
* Persistent storage using MySQL
* Responsive design

---

## 🗂️ Application Modules

### 1️⃣ Home Page

* Introduction to summer camp
* Highlights and benefits
* Eligibility details

*<img width="1919" height="905" alt="Screenshot 2026-01-13 115543" src="https://github.com/user-attachments/assets/4edeaed1-5bb6-46e5-9872-993045361443" />
 
<img width="1907" height="900" alt="Screenshot 2026-01-13 115558" src="https://github.com/user-attachments/assets/5fd4e715-0166-4f66-9b49-6cfba0bfb7cd" />

### 2️⃣ Sports Page

* Displays available sports
* Shows coach, fee, duration, and session details
* 
<img width="1900" height="915" alt="Screenshot 2026-01-13 115615" src="https://github.com/user-attachments/assets/b9ae2332-cc27-4dbc-aad8-0ecdd1a67d34" />

<img width="1919" height="913" alt="Screenshot 2026-01-13 115632" src="https://github.com/user-attachments/assets/38d70201-13dd-493e-8b7f-512bcc47abdd" />

<img width="1919" height="909" alt="Screenshot 2026-01-13 115655" src="https://github.com/user-attachments/assets/5b28aabe-811d-41b0-9a63-c73b3656178c" />

### 3️⃣ Enrollment Page

* Student details (Name, Age, Email)
* **Multiple sport selection (Checkbox based)**
* Session timing (Morning / Evening)
* Duration plan (4 or 8 weeks)
* Enroll button with success message

<img width="1919" height="913" alt="Screenshot 2026-01-13 115716" src="https://github.com/user-attachments/assets/2fb84713-256e-43e4-8b6c-d23ce32d5386" />

---

## 🔌 API Documentation

<img width="1918" height="941" alt="Screenshot 2026-01-13 120040" src="https://github.com/user-attachments/assets/7aa012d0-b65a-4f5f-9201-e63fbcd89626" />


### Base URL

```
http://localhost:8080/api/
```

### ➤ Enroll Student

**Endpoint:**

```
POST /api/enroll
```

**Request Body (JSON):**

```json
{
  "studentName": "Rahul",
  "age": 12,
  "email": "rahul@gmail.com",
  "sessionTiming": "Morning",
  "durationWeeks": 8,
  "sports": ["Football", "Swimming", "Cricket"]
}
```

**Response:**

```json
{
  "id": 1,
  "studentName": "Rahul",
  "sports": "Football,Swimming,Cricket",
  "sessionTiming": "Morning",
  "durationWeeks": 8
}
```

---

### ➤ Get All Enrollments

**Endpoint:**

```
GET /api/enrollments
```

**Response:**

```json
[
  {
    "id": 1,
    "studentName": "Rahul",
    "sports": "Football,Swimming"
  }
]
```

---

## 🗄️ Database Schema

### Table: `enrollments`

| Column Name    | Type         | Description           |
| -------------- | ------------ | --------------------- |
| id             | INT (PK)     | Enrollment ID         |
| student_name   | VARCHAR(100) | Student name          |
| age            | INT          | Student age           |
| email          | VARCHAR(100) | Email ID              |
| sports         | TEXT         | Selected sports (CSV) |
| session_timing | VARCHAR(50)  | Morning / Evening     |
| duration_weeks | INT          | 4 or 8 weeks          |

---

<img width="1908" height="954" alt="Screenshot 2026-01-13 121242" src="https://github.com/user-attachments/assets/4dfba9bf-d6dc-4961-bc22-5612025ac0e5" />


## ▶️ Steps to Run the Application

### Backend (Spring Boot)

1. Clone the repository

```bash
git clone <your-github-repo-url>
```

2. Open the project in IntelliJ / Eclipse
3. Update `application.properties` with MySQL credentials
4. Run:

```bash
mvn spring-boot:run
```

5. Server runs at:

```
http://localhost:8080/home
```

---

### Frontend (JSP)

1. Place JSP files under:

```
src/main/webapp/WEB-INF/views/
```

2. Access the app in browser:

```
http://localhost:8080/home#
```

---

## 🧪 Testing

* API tested using **Postman**
* Frontend tested via browser
* 
---

## 🔐 Optional Enhancements (Future Scope)

* JWT Authentication
* Admin Dashboard
* Payment Gateway
* Docker Containerization
* React Frontend

---

## 👨‍💻 Author

**Damodar GN**
Summer Camp Sports Enrollment Application

---

## 📄 License

This project is for educational purposes only.
