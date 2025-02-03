<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Privacy Policy & Terms | ExamNet</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9fafb;
            color: #333;
        }

        /* Header Section */
        header {
            background-color: #007bff;
            color: white;
            padding: 20px 0;
            position: relative;
            text-align: center;
            overflow: hidden;
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .navbar h1 {
            font-size: 2.5rem;
            margin: 0;
        }

        .navbar ul {
            list-style: none;
            display: flex;
            gap: 20px;
        }

        .navbar ul li {
            display: inline;
        }

        .navbar ul li a {
            color: white;
            text-decoration: none;
            font-size: 1.1rem;
            padding: 5px 10px;
            border-radius: 20px;
            transition: background-color 0.3s ease;
        }

        .navbar ul li a:hover {
            background-color: rgba(255, 255, 255, 0.3);
        }

        /* Main Container */
        .container {
            max-width: 900px;
            margin: 80px auto;
            padding: 40px;
            background-color: white;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            border-radius: 15px;
            text-align: center;
            position: relative;
        }

        .container::before, .container::after {
            content: '';
            position: absolute;
            width: 100px;
            height: 100px;
            background-color: #007bff;
            border-radius: 50%;
            opacity: 0.2;
        }

        .container::before {
            top: -30px;
            left: -30px;
        }

        .container::after {
            bottom: -30px;
            right: -30px;
        }

        h2 {
            color: #007bff;
            font-size: 2rem;
            margin-bottom: 20px;
        }

        p {
            font-size: 1.1rem;
            line-height: 1.8;
            color: #555;
            margin-bottom: 20px;
        }

        .info-block {
            margin: 30px 0;
        }

        /* Footer Section */
        footer {
            background-color: #007bff;
            color: white;
            text-align: center;
            padding: 20px;
        }

        footer p {
            margin: 0;
            font-size: 0.9rem;
        }

    </style>
</head>
<body>

<header>
    <div class="navbar">
        <h1>ExamNet</h1>
        <ul>
        <a href="Home.jsp">Home</a>
        <a href="Category.jsp">Category</a>
        <a href="ContactUs.jsp">Contact Us</a>
        <a href="Privacy.jsp">Privacy Policy</a>
        <a href="FAQ.jsp">FAQ</a>
        </ul>
    </div>
</header>

<div class="container">
    <div class="info-block">
        <h2>Privacy Policy</h2>
        <p><strong>ExamNet</strong> takes your privacy seriously. We collect only essential data, such as your name and email, to enhance your exam experience. We ensure that your personal information is safe and secure, and it will not be shared without your permission.</p>
    </div>

    <div class="info-block">
        <h2>Terms and Conditions</h2>
        <p>By using <strong>ExamNet</strong>, you agree to comply with our terms. This includes responsible use of the platform and respect for exam integrity. Any form of cheating or violation of our policies may result in account suspension or termination.</p>
        <p>We reserve the right to update these terms periodically. It's important that you review these terms regularly to stay informed of any changes.</p>
    </div>
</div>

<footer>
    <p>&copy; 2024 ExamNet. All Rights Reserved.</p>
</footer>

</body>
</html>