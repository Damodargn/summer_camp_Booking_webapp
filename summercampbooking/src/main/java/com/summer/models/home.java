package com.summer.models;

import jakarta.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "home")
public class home {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "enrollmentId")
    private int enrollmentId;
    @Column(name = "studentName")
    private String studentName;
    @Column(name = "age")
    private int age;
    @Column(name = "email")
    private String email;
    @Column(name = "sportId")
    private String sportId;
    @Column(name = "sessionTiming")
    private String sessionTiming;
    @Column(name = "durationWeeks")
    private int durationWeeks;
    @Column(name = "enrollmentDate")
    private LocalDate enrollmentDate;

   
    
    public int getEnrollmentId() { return enrollmentId; }
    public void setEnrollmentId(int enrollmentId) { this.enrollmentId = enrollmentId; }

    public String getStudentName() { return studentName; }
    public void setStudentName(String studentName) { this.studentName = studentName; }

    public int getAge() { return age; }
    public void setAge(int age) { this.age = age; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getSportId() { return sportId; }
    public void setSportId(String sportId) { this.sportId = sportId; }

    public String getSessionTiming() { return sessionTiming; }
    public void setSessionTiming(String sessionTiming) { this.sessionTiming = sessionTiming; }

    public int getDurationWeeks() { return durationWeeks; }
    public void setDurationWeeks(int durationWeeks) { this.durationWeeks = durationWeeks; }

    public LocalDate getEnrollmentDate() { return enrollmentDate; }
    public void setEnrollmentDate(LocalDate enrollmentDate) { this.enrollmentDate = enrollmentDate; 
    
    
    }
	@Override
	public String toString() {
		return "home [enrollmentId=" + enrollmentId + ", studentName=" + studentName + ", age=" + age + ", email="
				+ email + ", sportId=" + sportId + ", sessionTiming=" + sessionTiming + ", durationWeeks="
				+ durationWeeks + ", enrollmentDate=" + enrollmentDate + "]";
	}
    
	
}
