📊 Survey Leaderboard Application
🧾 Overview
The Survey Leaderboard Application is a full-stack web application developed using Spring Boot that enables users to submit survey responses, calculates their scores based on custom logic, and displays a dynamic leaderboard. The system is designed with extensibility and modularity in mind, making it suitable for real-world data collection and evaluation scenarios.

The project utilizes Spring MVC for request handling, Spring Data JPA with Hibernate for persistence, and Thymeleaf for frontend rendering. It supports both MySQL and H2 databases, making it easy to run in both production and development environments.

✅ Features
📝 Intuitive survey form for user participation

📊 Dynamic leaderboard displaying user scores

🔐 Role-based access control (Admin/User) with JWT (Optional for expansion)

⚙️ Flexible database support with MySQL and H2

🔗 RESTful API integration for scalability

🔄 Seamless data persistence using Spring Data JPA and Hibernate

🌐 Fully responsive UI using Thymeleaf

🛠️ Easily extensible for additional survey types or scoring logic

🛠️ Technologies Used
Backend: Java 17, Spring Boot, Spring MVC, Spring Data JPA, Hibernate

Frontend: Thymeleaf (JSP optional)

Database: MySQL (default), H2 (for local development)

Build Tool: Maven

Version Control: Git, GitHub

Optional Enhancements: Spring Security, JWT, Swagger/OpenAPI, JUnit/MockMvc

📋 Prerequisites
Ensure the following are installed on your system:

Java 17 or higher

Maven

MySQL (or use embedded H2)

Git

🚀 Getting Started
1. Clone the Repository
bash
Copy
Edit
git clone https://github.com/abhisheknigade/survey-leaderboard-application.git
cd survey-leaderboard-application
2. Configure the Database
Update your application.properties file with your local database credentials:

properties
Copy
Edit
spring.datasource.url=jdbc:mysql://localhost:3306/poll?createDatabaseIfNotExist=true
spring.datasource.username=root
spring.datasource.password=yourpassword

spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
💡 Note: The app will automatically create the database schema on first run.

3. Build and Run the Application
a. Using Maven CLI
bash
Copy
Edit
mvn clean install
mvn spring-boot:run
b. Using Spring Tool Suite (STS) or IntelliJ IDEA
Import the project as a Maven Project

Locate and run SurveyLeaderboardApplication.java as a Spring Boot application

🌐 Application Usage
Once the application is running:

📥 Access the Survey Form:
http://localhost:8080/

📊 View Leaderboard Results:
http://localhost:8080/allResults

📡 API Endpoints
Method	Endpoint	Description
GET	/	Display the survey form
POST	/submit	Submit survey responses
GET	/allResults	View all submitted responses

📌 You can extend the application with more REST APIs, user authentication, and frontend clients if needed.

🤝 Contributing
Contributions are welcome! To contribute:

Fork this repository

Create your feature branch:
git checkout -b feature-name

Commit your changes:
git commit -m "Add feature"

Push to your branch:
git push origin feature-name

Submit a Pull Request
