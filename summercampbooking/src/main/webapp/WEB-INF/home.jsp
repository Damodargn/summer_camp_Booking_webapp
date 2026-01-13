<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Summer Camp Sports Enrollment</title>

<style>

body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	margin: 0;
	background-color: #f0f2f5;
	scroll-behavior: smooth;
}

header {
	background: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)),
		url("https://images.unsplash.com/photo-1521412644187-c49fa049e84d")
		center/cover no-repeat;
	color: white;
	padding: 35px 20px;
	text-align: center;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	min-height: 80vh;
	position: relative;
	overflow: hidden;
}

header h1 {
	background: rgba(0, 0, 0, 0.5);
	padding: 20px 40px;
	border-radius: 15px;
	font-size: 2.5em;
	letter-spacing: 1px;
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.4);
	transition: 0.3s;
}

header h1:hover {
	transform: scale(1.03);
}

/* ---------- NAVBAR ---------- */
nav {
	display: flex;
	justify-content: flex-end;
	gap: 20px;
	padding: 15px 40px;
	background: rgba(52, 73, 94, 0.95);
	position: sticky;
	top: 0;
	z-index: 100;
	border-bottom-left-radius: 15px;
	border-bottom-right-radius: 15px;
	box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
	transition: 0.3s;
}

nav a {
	color: white;
	text-decoration: none;
	font-weight: 600;
	padding: 10px 18px;
	border-radius: 10px;
	background: rgba(0, 0, 0, 0.2);
	transition: 0.3s;
}

nav a:hover {
	background: #27ae60;
	transform: scale(1.05);
	box-shadow: 0 4px 15px rgba(39, 174, 96, 0.5);
}

/* ---------- DROPDOWN ---------- */
.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	right: 0;
	background-color: white;
	min-width: 140px;
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
	border-radius: 10px;
	overflow: hidden;
	z-index: 200;
}

.dropdown-content a {
	color: #34495e;
	padding: 12px 15px;
	display: block;
	text-decoration: none;
	font-weight: 500;
	transition: 0.3s;
}

.dropdown-content a:hover {
	background-color: #27ae60;
	color: white;
}

.dropdown:hover .dropdown-content {
	display: block;
}

/* ---------- SECTIONS ---------- */
section {
	display: none;
	padding: 60px 20px;
	opacity: 0;
	transform: translateY(30px);
	transition: 0.6s;
}

section.active {
	display: block;
	opacity: 1;
	transform: translateY(0);
}

h2 {
	color: #2c3e50;
	text-align: center;
	margin-bottom: 25px;
	font-size: 2em;
	position: relative;
}

h2::after {
	content: '';
	display: block;
	width: 60px;
	height: 4px;
	background: #27ae60;
	margin: 10px auto 0;
	border-radius: 2px;
}

.container {
	max-width: 950px;
	margin: auto;
	background: white;
	padding: 35px 30px;
	border-radius: 15px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.08);
}

/* ---------- TABLES ---------- */
table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
	box-shadow: 0 6px 15px rgba(0, 0, 0, 0.05);
	border-radius: 10px;
	overflow: hidden;
}

th, td {
	padding: 14px;
	text-align: center;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: #ecf0f1;
	font-weight: 700;
}

tr:hover {
	background-color: #f1f7f9;
}

/* ---------- INPUTS & BUTTONS ---------- */
input, select, button {
	padding: 12px;
	margin: 10px 0;
	width: 100%;
	font-size: 16px;
	border-radius: 10px;
	border: 1px solid #ccc;
	box-sizing: border-box;
	transition: 0.3s;
}

input:focus, select:focus {
	outline: none;
	border-color: #27ae60;
	box-shadow: 0 0 8px rgba(39, 174, 96, 0.5);
}

button {
	background-color: #27ae60;
	color: white;
	font-weight: bold;
	cursor: pointer;
	border: none;
	box-shadow: 0 5px 15px rgba(39, 174, 96, 0.4);
	transition: 0.3s;
}

button:hover {
	background-color: #219150;
	transform: scale(1.03);
	box-shadow: 0 8px 20px rgba(39, 174, 96, 0.5);
}

.message {
	font-weight: bold;
	margin-top: 12px;
	text-align: center;
	color: #27ae60;
	font-size: 1.1em;
}

.sports-grid {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
	gap: 25px;
	margin-top: 25px;
}

.sport-card {
	border-radius: 15px;
	overflow: hidden;
	text-align: center;
	background: #fff;
	box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
	transition: 0.3s;
}

.sport-card:hover {
	transform: translateY(-8px);
	box-shadow: 0 12px 30px rgba(0, 0, 0, 0.15);
}

.sport-card img {
	width: 100%;
	height: 180px;
	object-fit: cover;
	transition: 0.3s;
}

.sport-card h4 {
	margin: 14px 0;
	font-weight: 700;
	color: #2c3e50;
	font-size: 1.2em;
}

.sport-card img:hover {
	transform: scale(1.05);
}

/* ---------- LIST ---------- */
ul {
	padding-left: 25px;
	line-height: 1.8;
	font-size: 1.05em;
}

ul li::before {
	content: "✔️ ";
	color: #27ae60;
}

@media screen and (max-width: 768px) {
	nav {
		flex-direction: column;
		align-items: flex-end;
		padding: 15px 20px;
		gap: 10px;
	}
	header h1 {
		font-size: 2em;
		padding: 15px 25px;
	}
	.scroll-down {
		bottom: 20px;
	}
}
.checkbox-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
    gap: 10px;
    margin-top: 10px;
}

.checkbox-item {
    display: flex;
    align-items: center;
    gap: 10px;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 8px;
    background: #f9f9f9;
}

.checkbox-item input {
    width: auto;
}

.message {
    text-align: center;
    font-weight: bold;
    margin-top: 10px;
    color: green;

</style>

<script>
const BASE_URL = "${pageContext.request.contextPath}/api";

function showSection(id) {
    document.querySelectorAll("section").forEach(s => s.classList.remove("active"));
    document.getElementById(id).classList.add("active");
}

function enrollStudent() {
    const studentName = document.getElementById("studentName").value;
    const age = document.getElementById("age").value;
    const email = document.getElementById("email").value;
    const sessionTiming = document.getElementById("sessionTiming").value;
    const durationPlan = document.getElementById("durationPlan").value;
    const enrollMessage = document.getElementById("enrollMessage");

    const selectedSports = [];
    document.querySelectorAll("input[name='sports']:checked").forEach(cb => {
        selectedSports.push(cb.value);
    });

    if (!studentName || !age || !email || !sessionTiming || !durationPlan || selectedSports.length === 0) {
        enrollMessage.innerText = "Please fill all details and select at least one sport!";
        return;
    }
    
    fetch(`${BASE_URL}/enrollments`)
    .then(res => res.json())
    .then(data => console.log(data));


    fetch(`${BASE_URL}/enroll`, {
        method: "POST",
        headers: {"Content-Type": "application/json"},
        body: JSON.stringify({
            studentName: studentName,
            age: age,
            email: email,
            sessionTiming: sessionTiming,
            durationWeeks: durationPlan,
            sports: selectedSports
        })
    })
    .then(() => {
        enrollMessage.innerText = "Enrollment Successful!";

        document.getElementById("studentName").value = "";
        document.getElementById("age").value = "";
        document.getElementById("email").value = "";
        document.getElementById("sessionTiming").value = "";
        document.getElementById("durationPlan").value = "";
        document.querySelectorAll("input[name='sports']").forEach(cb => cb.checked = false);
    })
    .catch(() => enrollMessage.innerText = "Enrollment Failed!");
}

</script>
</head>

<body>

	<header>
		<h1>🏆 Summer Camp Sports Enrollment</h1>
	</header>

	<nav>
		<a href="#" onclick="showSection('home')">Home</a> <a href="#"
			onclick="showSection('sports')">Sports</a> <a href="#"
			onclick="showSection('enroll')">Enroll</a>
	</nav>

	<!-- HOME -->
	<section id="home" class="active">
		<div class="container">
			<h2>Welcome to Summer Camp</h2>
			<p>Our Summer Camp Sports Program offers students a perfect blend
				of fitness, discipline, teamwork, and fun during the summer
				holidays.</p>

			<h3>🌟 Why Choose Our Camp?</h3>
			<ul>
				<li>🏅 Certified and experienced coaches</li>
				<li>⚽ Multiple sports under one enrollment system</li>
				<li>🕒 Flexible morning and evening sessions</li>
				<li>🧒 Safe and child-friendly environment</li>
				<li>🏆 Focus on skill development and confidence building</li>
			</ul>

			<h3>🎯 Who Can Join?</h3>
			<p>Students aged 5 to 15 years can enroll. Beginners and advanced
				learners are both welcome.</p>

			<h3>📅 Camp Duration</h3>
			<p>Choose between 4-week and 8-week training plans based on your
				schedule and learning goals.</p>
		</div>
	</section>

	<!-- SPORTS -->
	<section id="sports">
		<div class="container">
			<h2>Available Sports</h2>
			<div class="sports-grid">
				<div class="sport-card">
					<img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKE0NamW5eWwjgegpM8y4U-4QecmgQSAwiQw&s"
						alt="Football">
					<h4>Football</h4>
				</div>
				<div class="sport-card">
					<img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_68SEAINLUQC1giE72K6JtG2gMxJVtFyIsw&s"
						alt="Cricket">
					<h4>Cricket</h4>
				</div>
				<div class="sport-card">
					<img
						src="https://images.unsplash.com/photo-1521412644187-c49fa049e84d"
						alt="Basketball">
					<h4>Basketball</h4>
				</div>
				<div class="sport-card">
					<img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7xF-ITr0b_x02hfw70C1ttGS-KfrpxpsSDQ&s"
						alt="Swimming">
					<h4>Swimming</h4>
				</div>
				<div class="sport-card">
					<img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoJhYvQqxpuQD8SXg8g4dIrJD_h77nZu2oxA&s"
						alt="Hiking">
					<h4>Hiking</h4>
				</div>
				<div class="sport-card">
					<img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgQP2VY48yDjLhA-vwXJ8WftuQ1opLzodStg&s"
						alt="CampFire">
					<h4>CampFire</h4>
				</div>
				<div class="sport-card">
					<img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSpQg3KkMeENdxfdrNaIpOTfpH4QeDIMI2YA&s"
						alt="Games">
					<h4>Games</h4>
				</div>
				<div class="sport-card">
					<img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCG1gHSAEh2WbB8zCDTtr-mN0pMrzCGelZSQ&s"
						alt="archery">
					<h4>archery</h4>
				</div>
				<div class="sport-card">
					<img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTo-9JezD5MMeDckrTZQf4__HF8IqgIYADPkw&s"
						alt="TalentShow">
					<h4>TalentShow</h4>
				</div>
			</div>
			<table>
				<thead>
					<tr>
						<th>ID</th>
						<th>Sport</th>
						<th>Coach</th>
						<th>Fee</th>
						<th>Duration(Weeks)</th>
						<th>Session</th>
					</tr>
				</thead>
				<tbody id="sportsTable">
					<tr>
						<td>1</td>
						<td>Football</td>
						<td>John</td>
						<td>990RS</td>
						<td>4 / 8</td>
						<td>Morning (6 AM - 8 AM) / Evening (4 PM - 6 PM)</td>
					</tr>
					<tr>
						<td>2</td>
						<td>Cricket</td>
						<td>Rahul</td>
						<td>899RS</td>
						<td>4 / 8</td>
						<td>Morning (6 AM - 8 AM) / Evening (4 PM - 6 PM)</td>
					</tr>
					<tr>
						<td>3</td>
						<td>Basketball</td>
						<td>Michael</td>
						<td>999RS</td>
						<td>4 / 8</td>
						<td>Morning (6 AM - 8 AM) / Evening (4 PM - 6 PM)</td>
					</tr>
					<tr>
						<td>4</td>
						<td>Swimming</td>
						<td>Phelps</td>
						<td>799RS</td>
						<td>4 / 8</td>
						<td>Morning (6 AM - 8 AM) / Evening (4 PM - 6 PM)</td>
					</tr>
					<tr>
						<td>5</td>
						<td>Hiking</td>
						<td>Thomas</td>
						<td>499RS</td>
						<td>4 / 8</td>
						<td>Morning (6 AM - 8 AM) / Evening (4 PM - 6 PM)</td>
					</tr>
					<tr>
						<td>6</td>
						<td>CampFire</td>
						<td>Samantha</td>
						<td>299RS</td>
						<td>4 / 8</td>
						<td>Morning (6 AM - 8 AM) / Evening (4 PM - 6 PM)</td>
					</tr>
					<tr>
						<td>7</td>
						<td>Games(Indoor/Outdoor)</td>
						<td>Sonu</td>
						<td>300RS</td>
						<td>4 / 8</td>
						<td>Morning (6 AM - 8 AM) / Evening (4 PM - 6 PM)</td>
					</tr>
					<tr>
						<td>8</td>
						<td>Archery</td>
						<td>Danny</td>
						<td>400RS</td>
						<td>4 / 8</td>
						<td>Morning (6 AM - 8 AM) / Evening (4 PM - 6 PM)</td>
					</tr>
					<tr>
						<td>9</td>
						<td>TalentShow</td>
						<td>Henry</td>
						<td>200RS</td>
						<td>4 / 8</td>
						<td>Morning (6 AM - 8 AM) / Evening (4 PM - 6 PM)</td>
					</tr>
				</tbody>
			</table>
		</div>
	</section>
	</div>
	</section>

<section id="enroll">
    <div class="container">
        <h2>Enroll Student</h2>

        <input type="text" id="enrollmentId" placeholder="Enrollment ID">
        <input type="text" id="studentName" placeholder="Student Name">
        <input type="number" id="age" placeholder="Age">
        <input type="email" id="email" placeholder="Email">

        <h3>Select Sports (Multiple Allowed)</h3>
        <div class="checkbox-grid">
            <label class="checkbox-item"><input type="checkbox" name="sports" value="Football"> Football</label>
            <label class="checkbox-item"><input type="checkbox" name="sports" value="Cricket"> Cricket</label>
            <label class="checkbox-item"><input type="checkbox" name="sports" value="Basketball"> Basketball</label>
            <label class="checkbox-item"><input type="checkbox" name="sports" value="Swimming"> Swimming</label>
            <label class="checkbox-item"><input type="checkbox" name="sports" value="Hiking"> Hiking</label>
            <label class="checkbox-item"><input type="checkbox" name="sports" value="CampFire"> CampFire</label>
            <label class="checkbox-item"><input type="checkbox" name="sports" value="Games"> Games</label>
            <label class="checkbox-item"><input type="checkbox" name="sports" value="Archery"> Archery</label>
            <label class="checkbox-item"><input type="checkbox" name="sports" value="TalentShow"> TalentShow</label>
        </div>

        <select id="sessionTiming">
            <option value="">Select Session Timing</option>
            <option value="Morning">Morning (6 AM - 8 AM)</option>
            <option value="Evening">Evening (4 PM - 6 PM)</option>
        </select>

        <select id="durationPlan">
            <option value="">Select Duration</option>
            <option value="4">4 Weeks</option>
            <option value="8">8 Weeks</option>
        </select>

        <button onclick="enrollStudent()">Enroll</button>
        <div class="message" id="enrollMessage"></div>
    </div>
</section>


</body>
</html>
