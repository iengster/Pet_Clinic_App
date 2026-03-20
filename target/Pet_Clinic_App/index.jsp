<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Pet Clinic App</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #e8f5e9;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }
        .container {
            text-align: center;
            background: white;
            padding: 60px 80px;
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }
        h1 { color: #2c7a2c; font-size: 36px; margin-bottom: 16px; }
        p  { color: #666; font-size: 18px; margin-bottom: 30px; }
        .badge {
            background: #2c7a2c;
            color: white;
            padding: 8px 24px;
            border-radius: 20px;
            font-size: 14px;
        }
        .info {
            margin-top: 30px;
            padding: 16px;
            background: #f9f9f9;
            border-radius: 8px;
            font-size: 14px;
            color: #888;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>🐾 Welcome To Pet_Clinic_App</h1>
        <p>Your pet care management system is up and running!</p>
        <span class="badge">Successfully Deployed</span>
        <div class="info">
            Built with Java + Maven | Deployed on Tomcat | Containerized with Docker
        </div>
    </div>
</body>
</html>
