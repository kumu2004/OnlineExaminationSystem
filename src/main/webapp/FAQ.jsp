<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FAQ - Online Examination System</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            color: #444;
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
            max-width: 800px;
            margin: 40px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #007bff;
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        .faq-item {
            border: 1px solid #ddd;
            border-radius: 5px;
            margin: 10px 0;
        }

        .faq-title {
            background-color: #007bff;
            color: white;
            padding: 15px;
            cursor: pointer;
            border-radius: 5px 5px 0 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .faq-title:hover {
            background-color: #0056b3;
        }

        .faq-content {
            display: none;
            padding: 15px;
            border-top: 1px solid #ddd;
            background-color: #f9f9f9;
        }

        /* Styling for responsive design */
        @media (max-width: 768px) {
            h1 {
                font-size: 2rem;
            }
        }
    </style>
</head>
<body>

<header>
    <div class="logo">ExamNet</div>
    <nav>
        <a href="Home.jsp">Home</a>
        <a href="Category.jsp">Category</a>
        <a href="ContactUs.jsp">Contact Us</a>
        <a href="Privacy.jsp">Privacy Policy</a>
        <a href="FAQ.jsp">FAQ</a>
    </nav>
</header>

<div class="container">
    <h1>Frequently Asked Questions (FAQ)</h1>

    <div class="faq-item">
        <div class="faq-title" onclick="toggleFAQ(this)">
            <span>What is the Online Examination System?</span>
            <span>+</span>
        </div>
        <div class="faq-content">
            <p>The Online Examination System is a web-based platform that allows students to take exams online in a secure and efficient manner.</p>
        </div>
    </div>

    <div class="faq-item">
        <div class="faq-title" onclick="toggleFAQ(this)">
            <span>How do I register for an exam?</span>
            <span>+</span>
        </div>
        <div class="faq-content">
            <p>You can register for an exam by creating an account on our platform and selecting the exam you wish to take from the available list.</p>
        </div>
    </div>

    <div class="faq-item">
        <div class="faq-title" onclick="toggleFAQ(this)">
            <span>What types of exams are offered?</span>
            <span>+</span>
        </div>
        <div class="faq-content">
            <p>We offer a variety of exams across different subjects including Mathematics, Science, and Programming.</p>
        </div>
    </div>

    <div class="faq-item">
        <div class="faq-title" onclick="toggleFAQ(this)">
            <span>Is there a time limit for taking exams?</span>
            <span>+</span>
        </div>
        <div class="faq-content">
            <p>Yes, each exam has a specified time limit which will be displayed before you begin the exam.</p>
        </div>
    </div>

    <div class="faq-item">
        <div class="faq-title" onclick="toggleFAQ(this)">
            <span>What should I do if I encounter technical issues during the exam?</span>
            <span>+</span>
        </div>
        <div class="faq-content">
            <p>If you experience any technical issues, please contact our support team immediately for assistance.</p>
        </div>
    </div>

    <div class="faq-item">
        <div class="faq-title" onclick="toggleFAQ(this)">
            <span>How is my data protected?</span>
            <span>+</span>
        </div>
        <div class="faq-content">
            <p>We take data protection seriously and implement industry-standard security measures to safeguard your information.</p>
        </div>
    </div>

</div>

<script>
    function toggleFAQ(element) {
        const content = element.nextElementSibling;
        const isVisible = content.style.display === "block";

        // Toggle display
        content.style.display = isVisible ? "none" : "block";

        // Change the toggle icon
        element.querySelector('span:last-child').innerText = isVisible ? '+' : '−';
    }
</script>

</body>
</html>