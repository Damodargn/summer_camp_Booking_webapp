package com.summer.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.summer.models.home;

@Repository
public interface homerepository extends CrudRepository<home, Integer> {

}
