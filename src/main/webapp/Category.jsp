<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Creative Login Categories</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&family=Roboto:wght@400&display=swap" rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@600&family=Roboto:wght@400&display=swap');

        body {
            background-image: url(Images/sliit.jpg);
            background-size: cover;
            font-family: 'Roboto', sans-serif;
            background-color: #d3d3d3; /* Light ash background */
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative; /* For positioning shapes */
            overflow: hidden; /* Hide overflow */
        }

        /* Header Styles */
        header {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            background-color: #007bff; /* Header background */
            color: white;
            padding: 15px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 10; /* Bring header above everything else */
        }

        header h1 {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            font-size: 24px;
        }

        nav {
            display: flex;
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

        /* Background Shapes */
        .shape1, .shape2 {
            position: absolute;
            z-index: 1; /* Behind the container */
        }

        .shape1 {
            width: 200px;
            height: 200px;
            background-color: rgba(0, 123, 255, 0.1);
            border-radius: 50%;
            top: -100px; /* Adjust position */
            left: -100px; /* Adjust position */
            transform: rotate(15deg);
        }

        .shape2 {
            width: 200px;
            height: 200px;
            background-color: rgba(0, 123, 255, 0.15);
            border-radius: 50%;
            bottom: -100px; /* Adjust position */
            right: -100px; /* Adjust position */
            transform: rotate(15deg);
        }

        .container {
            width: 100%;
            max-width: 400px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.2); /* Glass effect */
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            backdrop-filter: blur(8px);
            border-radius: 16px;
            border: 1px solid rgba(255, 255, 255, 0.18);
            text-align: center;
            animation: fadeIn 1.5s ease-in-out;
            position: relative; /* For z-index layering */
            z-index: 5; /* Bring container above shapes */
        }

        @keyframes fadeIn {
            0% { opacity: 0; transform: translateY(20px); }
            100% { opacity: 1; transform: translateY(0); }
        }

        .category-title {
            font-family: 'Poppins', sans-serif;
            font-size: 36px;
            font-weight: bold;
            color: #000000; /* Category text is black */
            margin-bottom: 20px;
            letter-spacing: 3px;
            animation: slideIn 1s ease-in-out;
        }

        @keyframes slideIn {
            0% { opacity: 0; transform: translateX(-50px); }
            100% { opacity: 1; transform: translateX(0); }
        }

        .button-container {
            margin-bottom: 20px;
        }

        /* Light color buttons with separate distinct colors */
        #admin-login {
            background-color: #A8D5BA; /* Light Green */
        }

        #admin-login:hover {
            background-color: #90c4a5; /* Slightly darker on hover */
        }

        #exam-coordinator-login {
            background-color: #AEDFF7; /* Light Blue */
        }

        #exam-coordinator-login:hover {
            background-color: #95cde5; /* Slightly darker on hover */
        }

        #lecture-login {
            background-color: #FFC4A3; /* Light Orange */
        }

        #lecture-login:hover {
            background-color: #e6b293; /* Slightly darker on hover */
        }

        #course-coordinator-login {
            background-color: #FAD6D6; /* Light Pink */
        }

        #course-coordinator-login:hover {
            background-color: #e1bcbc; /* Slightly darker on hover */
        }

        .login-btn {
            display: block;
            width: 100%;
            padding: 15px;
            margin: 10px 0;
            color: #2F4F4F; /* Dark Slate Gray text for contrast */
            font-family: 'Poppins', sans-serif; /* Changed font to Poppins */
            font-weight: 600; /* Bold text */
            border: none;
            border-radius: 30px; /* Rounded corners */
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.4s ease, transform 0.3s;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .login-btn:hover {
            transform: translateY(-5px); /* Lift on hover */
        }

        .image-container {
            margin-top: 20px;
            animation: fadeIn 1.5s ease-in-out;
        }

        .login-image {
            width: 100%;
            border-radius: 16px;
        }

        /* Add media queries to make it responsive */
        @media (max-width: 768px) {
            .container {
                max-width: 90%;
            }

            .category-title {
                font-size: 28px;
            }

            .login-btn {
                padding: 12px;
                font-size: 14px;
            }
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

    <div class="shape1"></div>
    <div class="shape2"></div>

    <div class="container">
        <h2 class="category-title">Category</h2>
        
        
            <div class="button-container">
   <a href="AdminLogin.jsp" class="login-btn" id="admin-login">Administrator login</a>
   

   <a href="LecturesLogin.jsp" class="login-btn" id="exam-login">Lecture login</a>
   <a href="ExamLogin.jsp" class="login-btn" id="Exam-login">Exam Coordinator login</a>
    <button class="login-btn" id="course-coordinator-login">Course coordinator login</button>
</div>

     

        <div class="image-container">
           
        </div>
    </div>

    <script>
        document.getElementById('admin-login').onclick = function() {
            alert('Administrator login clicked');
        };

        document.getElementById('exam-coordinator-login').onclick = function() {
            alert('Exam coordinator login clicked');
        };

        document.getElementById('lecture-login').onclick = function() {
            alert('Lecture login clicked');
        };

        document.getElementById('course-coordinator-login').onclick = function() {
            alert('Course coordinator login clicked');
        };
    </script>
</body>
</html>