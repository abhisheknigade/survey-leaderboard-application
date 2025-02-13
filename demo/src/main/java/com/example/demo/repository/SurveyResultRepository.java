package com.example.demo.repository;

import com.example.demo.model.SurveyResult;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface SurveyResultRepository extends CrudRepository<SurveyResult, Long> {
	
	// i have use method form curdrepository to sort dta in desc order
	List<SurveyResult> findByOrderByScoreDesc();
}


