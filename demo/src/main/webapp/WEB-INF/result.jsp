<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Survey Results</title>
    <style>
        body {
            font-family: 'Helvetica Neue', Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #eef2f3;
            color: #333;
        }
        .container {
            max-width: 700px;
            margin: 50px auto;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 15px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            border: 1px solid #dde1e7;
        }
        h1 {
            text-align: center;
            color: #0077cc;
            font-size: 28px;
        }
        .result, .message {
            text-align: center;
            font-size: 22px;
            margin: 20px 0;
        }
        .result {
            font-weight: bold;
            color: #28a745;
        }
        .message {
            color: #6c757d;
        }
        .button-container {
            text-align: center;
            margin-top: 30px;
        }
        .button-container a {
            background-color: #007bff;
            color: white;
            padding: 12px 25px;
            border-radius: 25px;
            text-decoration: none;
            font-size: 18px;
            transition: background-color 0.3s ease;
        }
        .button-container a:hover {
            background-color: #0056b3;
        }
        .container::before {
            content: "";
            display: block;
            width: 50px;
            height: 5px;
            background-color: #0077cc;
            margin: 0 auto 20px;
            border-radius: 2.5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Your Survey Results</h1>
        <div class="result">Total Score: ${score}</div>
        <div class="message">Result: ${resultMessage}</div>

        <!-- Add a button to view the leaderboard -->
        <div class="button-container">
            <a href="/leaderboard">View Leaderboard</a>
        </div>
    </div>
</body>
</html>
