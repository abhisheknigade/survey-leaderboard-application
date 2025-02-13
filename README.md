# Survey Leaderboard Application

## Overview
Survey Leaderboard Application is a Spring Boot-based web application that allows users to submit survey responses and view rankings based on their scores. The application leverages **Spring MVC**, **Spring Data JPA**, and **Thymeleaf/JSP** for frontend rendering.

## Features
- User-friendly survey form
- Score calculation based on predefined criteria
- Leaderboard to rank survey participants
- Database storage using **MySQL** or **H2 (for development)**
- RESTful API integration

## Technologies Used
- **Java 17+**
- **Spring Boot**
- **Spring MVC**
- **Spring Data JPA**
- **Thymeleaf / JSP**
- **Hibernate**
- **MySQL**
- **Git** for version control

## Prerequisites
Before running the application, ensure you have the following installed:
- **Java 17+**
- **Maven**
- **MySQL** (or use an embedded H2 database)
- **Git**

## Installation
### Clone the Repository
```bash
git clone https://github.com/abhisheknigade/survey-leaderboard-application.git
cd survey-leaderboard-application
```

### Configure Database
Update the `application.properties` file with your database credentials:
```properties
spring.datasource.url=jdbc:mysql://localhost:3306/Poll?createDatabaseIfNotExist=true
spring.datasource.username=root
spring.datasource.password=yourpassword
```

### Build and Run the Application
#### Using Maven
```bash
mvn clean install
mvn spring-boot:run
```

#### Using STS (Spring Tool Suite)
1. Import the project as a **Maven Project**
2. Navigate to `SurveyLeaderboardApplication.java`
3. Run as **Spring Boot Application**

## Usage
- Open your browser and visit: `http://localhost:8080/`
- Fill out the survey form and submit responses
- View the leaderboard by accessing: `http://localhost:8080/allResults`

## API Endpoints
| Method | Endpoint | Description |
|--------|---------|-------------|
| GET | `/` | Display the survey form |
| POST | `/submit` | Submit survey responses |
| GET | `/allResults` | View all survey responses |

## Contributing
1. Fork the repository
2. Create a new branch: `git checkout -b feature-branch`
3. Commit your changes: `git commit -m "Added new feature"`
4. Push to the branch: `git push origin feature-branch`
5. Submit a pull request


