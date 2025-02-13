package com.example.demo.model;

public class LeaderboardEntry implements Comparable<LeaderboardEntry> {
    private String name;
    private String email;
    private int score;

    // Default constructor
    public LeaderboardEntry() {}

    // Parameterized constructor
    public LeaderboardEntry(String name, String email, int score) {
        this.name = name;
        this.email = email;
        this.score = score;
    }

    // Getters and Setters
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    @Override
    public int compareTo(LeaderboardEntry other) {
        // Sort in descending order of score
        return Integer.compare(other.score, this.score);
    }
}
