<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete User</title>
    <style>
        body {
            background-image: url(Images/sliit.jpg);
              background-size: cover;
            background-size: cover;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            background-image: linear-gradient(white, lightblue);
            width: 50%;
            margin: 0 auto;
            
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: #d9534f;
            color: white;
            border: none;
            cursor: pointer;
            padding: 15px;
        }
        input[type="submit"]:hover {
            background-color: #c9302c;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Delete Contact</h2>
        <form action="AdminDeleteServlet" method="post">
            <label for="id">Enter ID of Contact to Delete:</label>
            <input type="text" id="id" name="id" required>

            <input type="submit" value="Delete">
        </form>
    </div>

</body>
</html>
