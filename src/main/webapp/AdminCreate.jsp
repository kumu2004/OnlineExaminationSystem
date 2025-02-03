<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Management | ExamNet</title>
    <style>
        body {
            background-image: url(Images/graduate.jpg);
            background-size: cover;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        /* Header Styles */
        header {
            background-color: #007bff;
            color: white;
            padding: 20px;
            text-align: left;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        header h1 {
            margin: 0;
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
            background-image: linear-gradient(white, lightblue);
          
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

        /* Validation error styling */
        .error {
            color: red;
            font-size: 0.9em;
            display: none;
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

    <!-- Create User Form -->
    <form action="AdminCreateServlet" action="AdminReadServlet" id="userForm" method="post" onsubmit="return validateForm();">
        <h2>Create User</h2>

        <label for="name">Name</label>
        <input type="text" id="name" name="Name" required>
        <span class="error" id="nameError">Name is required.</span>

        <label for="email">Email</label>
        <input type="email" id="email" name="Email" required>
        <span class="error" id="emailError">Please enter a valid email.</span>

        <label for="role">Role</label>
        <select id="role" name="Role" required>
            <option value="">--Select Role--</option>
            <option value="student">Student</option>
            <option value="teacher">Teacher</option>
            <option value="admin">Admin</option>
        </select>
        <span class="error" id="roleError">Please select a role.</span>

        <label for="registerDate">Register Date</label>
        <input type="date" id="registerDate" name="RegisterDate" required>
        <span class="error" id="dateError">Please select a registration date.</span>

        <label for="registerCourse">Register Course</label>
        <input type="text" id="registerCourse" name="RegisterCourse" required>
        <span class="error" id="courseError">Register course is required.</span>

        <button type="submit">Add User</button>
    </form>
</div>

<script>
    function validateForm() {
        let isValid = true;

        // Get form values
        let name = document.getElementById("name").value.trim();
        let email = document.getElementById("email").value.trim();
        let role = document.getElementById("role").value;
        let registerDate = document.getElementById("registerDate").value;
        let registerCourse = document.getElementById("registerCourse").value.trim();

        // Error elements
        let nameError = document.getElementById("nameError");
        let emailError = document.getElementById("emailError");
        let roleError = document.getElementById("roleError");
        let dateError = document.getElementById("dateError");
        let courseError = document.getElementById("courseError");

        // Validate name
        if (name === "") {
            nameError.style.display = "block";
            isValid = false;
        } else {
            nameError.style.display = "none";
        }

        // Validate email
        const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        if (!emailPattern.test(email)) {
            emailError.style.display = "block";
            isValid = false;
        } else {
            emailError.style.display = "none";
        }

        // Validate role
        if (role === "") {
            roleError.style.display = "block";
            isValid = false;
        } else {
            roleError.style.display = "none";
        }

        // Validate date
        if (registerDate === "") {
            dateError.style.display = "block";
            isValid = false;
        } else {
            dateError.style.display = "none";
        }

        // Validate course
        if (registerCourse === "") {
            courseError.style.display = "block";
            isValid = false;
        } else {
            courseError.style.display = "none";
        }

        // If all fields are valid, show success message
        if (isValid) {
            alert("Add User Successful");
        }

        return isValid; // Return form validity status
    }
</script>

</body>
</html>
