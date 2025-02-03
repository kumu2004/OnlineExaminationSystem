<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administrator Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <style>
        body {
            background-image: url(Images/login.jpg);
            font-family: 'Roboto', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            height: 100vh;
            position: relative;
            overflow: hidden;
        }

        header {
            background-color: #007bff;
            color: white;
            padding: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: relative;
            z-index: 2;
        }

        header h1 {
            margin: 0;
            font-weight: 500;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            padding: 5px 10px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        nav a:hover {
            background-color: rgba(255, 255, 255, 0.2);
        }

        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 350px;
            margin: auto;
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
            position: relative;
            z-index: 2;
        }

        h2 {
            text-align: center;
            color: #333;
            font-weight: 700;
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
            font-weight: 500;
            transition: background-color 0.3s;
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
    <h1>ExamNet</h1>
    <nav>
        <a href="Home.jsp">Home</a>
        <a href="Category.jsp">Category</a>
        <a href="ContactUs.jsp">Contact Us</a>
        <a href="Privacy.jsp">Privacy Policy</a>
        <a href="FAQ.jsp">FAQ</a>
    </nav>
</header>

<div class="container">
    <h2>Administrator Login</h2>
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
    // Sample admin credentials (for demo purposes)
    const adminCredentials = {
        username: 'admin',
        password: 'admin123' // In real applications, use more secure credentials
    };

    const loginForm = document.getElementById('loginForm');
    const errorMessage = document.getElementById('errorMessage');

    loginForm.addEventListener('submit', function(event) {
        event.preventDefault(); // Prevent default form submission

        const username = document.getElementById('username').value;
        const password = document.getElementById('password').value;

        // Validate credentials
        if (username === adminCredentials.username && password === adminCredentials.password) {
            // Pop-up message for successful login
            alert('Login Successful! Redirecting to AdminCreate.jsp...');

            // Redirect to Create.jsp after a short delay
            setTimeout(function() {
                window.location.href = 'AdminCreate.jsp';
            }, 2000); // 2 seconds delay
        } else {
            // Display error message
            errorMessage.textContent = 'Invalid username or password. Please try again.';
            
            // Optional: Pop-up for unsuccessful login attempt
            alert('Invalid username or password. Please try again.');
        }
    });
</script>

</body>
</html>

