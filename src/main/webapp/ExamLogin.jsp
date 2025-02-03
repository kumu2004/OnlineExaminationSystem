<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam Coordinator Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e9ecef;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            height: 100vh;
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
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 350px;
            margin: auto; /* Center the login container */
            flex: 1; /* Allow it to grow and fill space */
            display: flex;
            flex-direction: column;
            justify-content: center;
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
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #218838;
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
    <h2>Exam Coordinator Login</h2>
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
    // Sample exam coordinator credentials (for demo purposes)
    const coordinatorCredentials = {
        username: 'examcoordinator',
        password: 'exam2024' // Use secure credentials in real applications
    };

    const loginForm = document.getElementById('loginForm');
    const errorMessage = document.getElementById('errorMessage');

    loginForm.addEventListener('submit', function(event) {
        event.preventDefault(); // Prevent default form submission

        const username = document.getElementById('username').value;
        const password = document.getElementById('password').value;

        // Validate credentials
        if (username === coordinatorCredentials.username && password === coordinatorCredentials.password) {
            alert('Login successful! Redirecting to the Create.jsp...');
            // Example redirect: window.location.href = 'exam-dashboard.html';
         // Redirect to Create.jsp after a short delay
            setTimeout(function() {
                window.location.href = 'Create.jsp';
            }, 2000); // 2 seconds delay
        } else {
            errorMessage.textContent = 'Invalid username or password. Please try again.';
            
         // Optional: Pop-up for unsuccessful login attempt
            alert('Invalid username or password. Please try again.');
        }
    });
</script>

</body>

</html>