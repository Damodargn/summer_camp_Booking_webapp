package com.summer.service;

import com.summer.models.home;
import com.summer.repository.homerepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;

@Service
public class homeservice {

	@Autowired
    private final homerepository repo;

    public homeservice(homerepository repo) {
        this.repo = repo;
    }

    public home saveEnrollment(home e) {
        e.setEnrollmentDate(LocalDate.now());
        return repo.save(e);
    }

    public List<home> getAllEnrollments() {
        return (List<home>) repo.findAll();
    }

}
