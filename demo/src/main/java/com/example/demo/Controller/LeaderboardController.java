package com.example.demo.Controller;

import com.example.demo.model.SurveyResult;
import com.example.demo.repository.SurveyResultRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class LeaderboardController {

    @Autowired
    private SurveyResultRepository repo;

    
    @GetMapping("/leaderboard")
    public ModelAndView showLeaderboard() {
        List<SurveyResult> leaderboard = (List<SurveyResult>) repo.findByOrderByScoreDesc();
        ModelAndView modelAndView = new ModelAndView("leaderboard");
        modelAndView.addObject("leaderboard", leaderboard);
        return modelAndView;
    }
}
