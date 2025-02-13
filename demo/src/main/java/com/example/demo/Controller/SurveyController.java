package com.example.demo.Controller;

import com.example.demo.constants.SurveyConstants;
import com.example.demo.model.SurveyResult;
import com.example.demo.repository.SurveyResultRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class SurveyController {

    private final SurveyConstants surveyService;
    private final SurveyResultRepository surveyResultRepository;
    
    @Autowired
    public SurveyController(SurveyConstants surveyService, SurveyResultRepository surveyResultRepository) {
        this.surveyService = surveyService;
        this.surveyResultRepository = surveyResultRepository;
    }

    @PostMapping("/submit")
    public String submitSurvey(@RequestParam Map<String, String> formData, Map<String, Object> model) {
        // Process the survey data
        String scoreResult = surveyService.processSurveyData(formData);

        // Extract numeric score
        int score = 0;
        try {
            score = Integer.parseInt(scoreResult);
        } catch (NumberFormatException e) {
            System.out.println("Error parsing score: " + e.getMessage());
        }
        

        // Create and save SurveyResult entity
        SurveyResult surveyResult = new SurveyResult();
        surveyResult.setName(formData.get("Uname"));
        surveyResult.setEmail(formData.get("Uemail"));
        surveyResult.setScore(score);

        
        // Save to database
        surveyResultRepository.save(surveyResult);

        
        // Determine pass or fail
        String resultMessage = score < 30 ? "Fail" : "Pass";

        // Pass score and result message to the view
        model.put("score", score);
        model.put("resultMessage", resultMessage);
        return "result";
    }
}
