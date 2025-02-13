<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Survey Form</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f2f5;
        }
        .form-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }
        .form-container h1 {
            text-align: center;
            color: #333;
            font-size: 2em;
            margin-bottom: 20px;
        }
        .form-container form {
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 5px;
        }
        .form-container div {
            margin-bottom: 20px;
        }
        .form-container label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #555;
        }
        .form-container input[type="text"],
        .form-container input[type="email"] {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
            transition: border-color 0.3s ease;
        }
        .form-container input[type="text"]:focus,
        .form-container input[type="email"]:focus {
            border-color: #007bff;
            outline: none;
        }
        .form-container .options label {
            font-weight: normal;
            margin-bottom: 10px;
            color: #666;
        }
        .form-container .options input[type="radio"] {
            margin-right: 10px;
        }
        .form-container button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 15px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
            transition: background-color 0.3s ease;
        }
        .form-container button:hover {
            background-color: #0056b3;
        }
        .question {
            padding: 10px 15px;
            background-color: #f0f2f5;
            border-radius: 5px;
            margin-bottom: 20px;
        }
        .question p {
            font-size: 18px;
            font-weight: bold;
            color: #333;
        }
        .options label {
            font-size: 16px;
            color: #333;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Survey Form</h1>
        <form action="/submit" method="post">
            <!-- User Details -->
            <div>
                <label for="Uname">Name:</label>
                <input type="text" id="Uname" name="Uname" required>
            </div>
            <div>
                <label for="Uemail">Email:</label>
                <input type="email" id="Uemail" name="Uemail" required 
                       pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
                       title="Please enter a valid email address (e.g., example@example.com)">
            </div>

            <!-- Questions -->
            <div class="question">
                <p>1. Which programming language do you prefer for backend development?</p>
                <div class="options">
                    <label><input type="radio" name="backend_lang" value="Java" required> Java</label>
                    <label><input type="radio" name="backend_lang" value="Python" required> Python</label>
                    <label><input type="radio" name="backend_lang" value="C#" required> C#</label>
                </div>
            </div>

            <div class="question">
                <p>2. Which database management system do you use most frequently?</p>
                <div class="options">
                    <label><input type="radio" name="dbms" value="MySQL" required> MySQL</label>
                    <label><input type="radio" name="dbms" value="PostgreSQL" required> PostgreSQL</label>
                    <label><input type="radio" name="dbms" value="MongoDB" required> MongoDB</label>
                </div>
            </div>

            <div class="question">
                <p>3. How experienced are you with cloud platforms?</p>
                <div class="options">
                    <label><input type="radio" name="cloud_experience" value="Beginner" required> Beginner</label>
                    <label><input type="radio" name="cloud_experience" value="Intermediate" required> Intermediate</label>
                    <label><input type="radio" name="cloud_experience" value="Advanced" required> Advanced</label>
                </div>
            </div>

            <div class="question">
                <p>4. Which version control system do you use most often?</p>
                <div class="options">
                    <label><input type="radio" name="version_control" value="Git" required> Git</label>
                    <label><input type="radio" name="version_control" value="SVN" required> SVN</label>
                    <label><input type="radio" name="version_control" value="Mercurial" required> Mercurial</label>
                </div>
            </div>

            <div class="question">
                <p>5. How comfortable are you with containerization tools like Docker?</p>
                <div class="options">
                    <label><input type="radio" name="docker_comfort" value="Not comfortable" required> Not comfortable</label>
                    <label><input type="radio" name="docker_comfort" value="Somewhat comfortable" required> Somewhat comfortable</label>
                    <label><input type="radio" name="docker_comfort" value="Very comfortable" required> Very comfortable</label>
                </div>
            </div>
			
			
			<div class="question">
			    <p>6. How experienced are you with cloud platforms like AWS, Azure, or Google Cloud?</p>
			    <div class="options">
			        <label><input type="radio" name="cloud_experience" value="No experience" required> No experience</label>
			        <label><input type="radio" name="cloud_experience" value="Basic knowledge" required> Basic knowledge</label>
			        <label><input type="radio" name="cloud_experience" value="Intermediate" required> Intermediate</label>
			        <label><input type="radio" name="cloud_experience" value="Expert" required> Expert</label>
			    </div>
			</div>


			
			
			

            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
