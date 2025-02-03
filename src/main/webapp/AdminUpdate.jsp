<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update User Info</title>
    <style>
    
       body {
            background-image: url(Images/Ab.png);
            background-size: cover;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            }
    
       
        header {
            
            background-color: #007bff;
            color: white;
            padding: 20px;
            text-align: left; /* Align text to the left */
            display: flex;
            justify-content: space-between; /* Space between title and nav */
            align-items: center; /* Center items vertically */
        }

        header h1 {
            margin: 0;
        }

        nav {
            margin-top: 10px;
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

        /* Container Styles */
        .container {
            max-width: 800px;
            margin: auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h2 {
            color: #333;
            margin-top: 20px;
        }

        form {
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
        }

        input, select, button {
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

        .update, .delete {
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

        .update:hover {
            background-color: #0056b3;
        }

        .delete:hover {
            background-color: #c82333;
        }
    </style>
    
</head>
<body>

<header>
    <h1>ExamNet</h1>
    <nav>
        <a href="#">Home</a>
        <a href="#">Category</a>
        <a href="#">Contact Us</a>
        <a href="#">Privacy Policy</a>
        <a href="#">FAQ</a>
    </nav>
</header>

<div class="container">
    <h2>Admin User Management</h2>

    <!-- Update User Form -->
    <form action="AdminUpdateServlet" method="post">
    


        <h2>Update User</h2>
        <label for="id">ID</label>
        <input type="text" id="id" name="id" required>

        <label for="name">Name</label>
        <input type="text" id="name" name="Name" required>

        <label for="email">Email</label>
        <input type="email" id="email" name="Email" required>

        <label for="role">Role</label>
        <select id="role" name="Role" required>
            <option value="student">Student</option>
            <option value="teacher">Teacher</option>
            <option value="admin">Admin</option>
        </select>

        <label for="registerDate">Register Date</label>
        <input type="date" id="registerDate" name="RegisterDate" required>

        <label for="registerCourse">Register Course</label>
        <input type="text" id="registerCourse" name="RegisterCourse" required>

        <button type="submit">Update User</button>
    </form>
</div>

</body>
</html>
