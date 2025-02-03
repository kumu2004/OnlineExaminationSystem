<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Examination Management</title>
 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        /* Header Styles */
        header {
            background-color: #007bff; /* Changed to blue */
            color: white;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        h1 {
            text-align: center;
            color: #333;
            margin: 20px 0;
        }

        .container {
            max-width: 900px;
            margin: auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
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

        form {
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
        }

        input, button {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            background-color: #28a745;
            color: white;
            border: none;
        }

        button:hover {
            background-color: #218838;
            cursor: pointer;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #f4f4f4;
        }

        .edit, .delete {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 3px;
            cursor: pointer;
        }

        .delete {
            background-color: #dc3545;
        }

        .edit:hover {
            background-color: #0056b3;
        }

        .delete:hover {
            background-color: #c82333;
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
    <h1>Exam Coordination System</h1>

    <!-- Exam Form (Create/Update) -->
    <form id="examForm" action="CreateServlet" method="post">
        <h2>Add Exam</h2>
        <label for="examName">Exam Name</label>
        <input type="text" id="examName" name="examName" required>

        <label for="examDate">Date</label>
        <input type="date" id="eDate" name="eDate" required>

        <label for="examTime">Time</label>
        <input type="time" id="eTime" name="eTime" required>

        <label for="examDuration">Duration (minutes)</label>
        <input type="number" id="eDuration" name="eDuration" required>

        <button type="submit">Submit</button>
    </form>

    
</div>

	


</body>
</html>