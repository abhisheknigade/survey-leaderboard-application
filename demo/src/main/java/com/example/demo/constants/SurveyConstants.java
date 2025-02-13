package com.example.demo.constants;

import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class SurveyConstants {

    private static final Map<String, Integer> SCORES = new HashMap<>();

    static {
        SCORES.put("Java", 10);
        SCORES.put("Python", 15);
        SCORES.put("C#", 20);
        
        SCORES.put("MySQL", 5);
        SCORES.put("PostgreSQL", 7);
        SCORES.put("MongoDB", 12);
        
        SCORES.put("Beginner", 3);
        SCORES.put("Intermediate", 6);
        SCORES.put("Advanced", 9);
        
        SCORES.put("Git", 8);
        SCORES.put("SVN", 5);
        SCORES.put("Mercurial", 6);
        
        SCORES.put("Not comfortable", 1);
        SCORES.put("Somewhere comfortable", 13);
        SCORES.put("Very comfortable", 5);
        
        
        SCORES.put("No experience", 2);
        SCORES.put("Basic knowledge", 5);
        SCORES.put("Intermediate", 9);
        SCORES.put("Expert", 15);

        
        
    }

    public String processSurveyData(Map<String, String> formData) {
        if (formData == null || formData.isEmpty()) {
            return "No data provided";
        }

        int totalScore = 0;

        for (String value : formData.values()) {
            value = value.trim(); // Ensure there are no leading or trailing spaces
            Integer score = SCORES.get(value);
            if (score != null) {
                totalScore += score;
            } else {
                System.out.println("Unrecognized value: " + value);
            }
        }


        return String.valueOf(totalScore); // Return just the score as a string
    }
}
