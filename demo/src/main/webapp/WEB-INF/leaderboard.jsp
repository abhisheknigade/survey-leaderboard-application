<%@ page import="com.example.demo.model.SurveyResult" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Leaderboard</title>
    <style>
        body {
            font-family: 'Helvetica Neue', Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #eef2f3;
            color: #333;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 15px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            border: 1px solid #dde1e7;
        }
        h2 {
            text-align: center;
            color: #0077cc;
            font-size: 28px;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f4f4f4;
            color: #0077cc;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #e9ecef;
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
        <h2>Leaderboard</h2>
        <table>
            <thead>
                <tr>
                    <th>Rank</th>
                    <th>Name</th>
                    <th>Score</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<SurveyResult> leaderboard = (List<SurveyResult>) request.getAttribute("leaderboard");
                    int rank = 1;
                    for (SurveyResult entry : leaderboard) {
                %>
                <tr>
                    <td><%= rank++ %></td>
                    <td><%= entry.getName() %></td>
                    <td><%= entry.getScore() %></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>
</body>
</html>
