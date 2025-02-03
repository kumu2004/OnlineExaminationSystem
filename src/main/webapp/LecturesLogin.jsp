<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lecturer Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column; /* Change to column for header */
        }

        /* Header Styles */
        header {
            background-color: #007bff; /* Blue background */
            color: white;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 24px;
            font-weight: bold;
        }

        nav {
            display: flex;
            gap: 15px;
        }

        nav a {
            color: white;
            text-decoration: none;
            padding: 8px 15px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        nav a:hover {
            background-color: #0056b3; /* Darker shade for hover */
        }

        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 350px;
            margin: auto; /* Center the container */
            margin-top: 50px; /* Add some margin to the top */
        }

        h2 {
            text-align: center;
            color: #333;
        }

        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 15px;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #0056b3;
        }

        .error {
            color: red;
            font-size: 14px;
            text-align: center;
            margin-top: 10px;
        }
    </style>
</head>
<body>

<header>
    <div class="logo">ExamNet</div>
    <nav>
        <a href="#">Home</a>
        <a href="#">Category</a>
        <a href="#">Contact Us</a>
        <a href="#">Privacy Policy</a>
        <a href="#">FAQ</a>
    </nav>
</header>

<div class="container">
    <h2>Lecturer Login</h2>
    <form id="loginForm">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" required>

        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>

        <button type="submit">Login</button>
        <div class="error" id="errorMessage"></div>
    </form>
</div>

<script>
    const lecturerCredentials = {
        username: 'lecturer',
        password: 'lecturer2024' 
    };

    const loginForm = document.getElementById('loginForm');
    const errorMessage = document.getElementById('errorMessage');

    loginForm.addEventListener('submit', function(event) {
        event.preventDefault(); 

        const username = document.getElementById('username').value;
        const password = document.getElementById('password').value;

        if (username === lecturerCredentials.username && password === lecturerCredentials.password) {
            alert('Login Successful! Redirecting to LecturersCreate.jsp...');
            setTimeout(function() {
                window.location.href = 'LecturersCreate.jsp';
            }, 2000); 
        } else {
            errorMessage.textContent = 'Invalid username or password. Please try again.';
            alert('Invalid username or password. Please try again.');
        }
    });
</script>

</body>
</html>
