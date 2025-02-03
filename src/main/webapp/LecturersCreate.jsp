<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lecturer Management System</title>
    <style>
        body {
            background-image: url(Images/1.jpg);
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
            background-size: cover;
            align-items: center;
            justify-content: center;
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

        h1 {
            text-align: center;
            color: #333;
        }

        .container {
            background-image: url(Images/7.jpg);
            max-width: 900px;
            margin: auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        form {
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
        }

        input, button {
            width: 95%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            width: 97%;
            padding: 10px;
            margin: 10px 0;
            background-color: #28a745;
            color: white;
            border: none;
        }

        button:hover {
            width: 97%;
            padding: 10px;
            margin: 10px 0;
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
    <h1>Lecturer Management System</h1>

    <!-- Lecturer Form (Create/Update) -->
    <form action = "LecturersRead.jsp" id="lecturerForm" method="post">
        <h2>Add Lecturer</h2>
        <label>LecturerName</label>
        <input type="text" id="lecturerName" name="lecturerName" required>

        <label>Email</label>
        <input type="email" id="Email" name="Email" required>

        <label>Department</label>
        <input type="text" id="Department" name="Department" required>

        <button type="submit" >submit</button>
    </form>
</div>
    

</body>
</html>