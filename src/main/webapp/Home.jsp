<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ExamNet - Online Examination System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background-image: url(Images/home.jpeg);
            background-size: cover;
            font-family: 'Roboto', sans-serif;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            color: #444;
        }

        header {
            background-color: #007bff;
            color: white;
            padding: 20px;
            text-align: center;
            position: relative;
        }

        header h1 {
            font-size: 3rem;
            margin: 0;
            font-family: 'Arial', sans-serif;
            letter-spacing: 2px;
        }

        header p {
            font-size: 1.2rem;
            margin: 10px 0;
        }

        nav {
            margin: 20px 0;
            background-color: #0056b3;
            padding: 10px;
        }

        nav a {
            color: white;
            margin: 0 15px;
            text-decoration: none;
            font-size: 1.1rem;
        }

        nav a:hover {
            text-decoration: underline;
        }

        .container {
            background: linear-gradient(red, blue);
            -webkit-background-clip: text;
            background-clip: text;
            max-width: 1000px;
            margin: 20px auto;
            padding: 20px;
            background-color: grey;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(10, 10, 10, 10);
        }

        h2 {
            text-align: center;
            color: #007bff;
            font-size: 2rem;
        }

        .content {
            text-align: center;
            margin: 20px 0;
        }

        .content p {
            font-size: 1.2rem;
            color: #666;
        }

        .btn {
            background-color: #007bff;
            color: white;
            padding: 15px 25px;
            text-decoration: none;
            border-radius: 5px;
            font-size: 1.1rem;
            display: inline-block;
            margin: 20px 0;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        .features {
            display: flex;
            justify-content: space-around;
            margin-top: 40px;
        }

        .feature-box {
            width: 30%;
            background-color: #f9f9f9;
            border: 1px solid #ccc;
            border-radius: 10px;
            padding: 20px;
            text-align: center;
        }

        .feature-box i {
            font-size: 3rem;
            color: #007bff;
        }

        .feature-box h3 {
            font-size: 1.5rem;
            margin: 10px 0;
            color: #333;
        }

        .feature-box p {
            font-size: 1rem;
            color: #666;
        }

        footer {
            background-color: #007bff;
            color: white;
            text-align: center;
            padding: 15px;
            margin-top: 40px;
        }

        footer p {
            margin: 0;
            font-size: 0.9rem;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .features {
                flex-direction: column;
                align-items: center;
            }

            .feature-box {
                width: 80%;
                margin-bottom: 20px;
            }
        }
    </style>
</head>
<body>

<header>
    <h1>ExamNet</h1>
    <p>Your Ultimate Online Examination System</p>
    <nav>
         <a href="Home.jsp">Home</a>
        <a href="Category.jsp">Category</a>
        <a href="ContactUs.jsp">Contact Us</a>
        <a href="Privacy.jsp">Privacy Policy</a>
        <a href="FAQ.jsp">FAQ</a>
    </nav>
</header>

<div class="container">
    <h2>Welcome to ExamNet</h2>
    <div class="content">
        <p>ExamNet is a powerful and efficient platform designed to make online examinations seamless for educators and students. Explore a wide range of exams across various categories.</p>
        <a href="#category" class="btn">Explore Categories</a>
    </div>

    <div class="features">
        <div class="feature-box">
            <i class="fas fa-book-open"></i>
            <h3>Wide Range of Exams</h3>
            <p>Access exams from various disciplines and test your knowledge effectively.</p>
        </div>
        <div class="feature-box">
            <i class="fas fa-clock"></i>
            <h3>Timed Assessments</h3>
            <p>Set and participate in timed exams to simulate real-world test conditions.</p>
        </div>
        <div class="feature-box">
            <i class="fas fa-lock"></i>
            <h3>Secure Platform</h3>
            <p>Your data is secure with our state-of-the-art security measures, ensuring privacy.</p>
        </div>
    </div>
</div>

<footer>
    <p>&copy; 2024 ExamNet. All rights reserved.</p>
</footer>

</body>
</html>