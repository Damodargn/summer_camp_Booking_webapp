package com.summer.controller;

import com.summer.SummercampbookingApplication;
import com.summer.models.home;
import com.summer.service.homeservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/") 
public class homecontroler {

	@Autowired
    private final homeservice service;
    
    @GetMapping("/home")
    public String homePage() {
        return "home"; 
    }

    public homecontroler(homeservice service, SummercampbookingApplication summercampbookingApplication) {
        this.service = service;
    }

    // SAVE ENROLLMENT
	@ResponseBody
    @PostMapping("/enroll")
    public home enrollStudent(@RequestBody home enrollmentId) {
        return service.saveEnrollment(enrollmentId);
    }

    // VIEW ENROLLMENTS
    @ResponseBody
	@GetMapping("/enrollments")
    public List<home> getEnrollments() {
        return service.getAllEnrollments();
    }
    
}


