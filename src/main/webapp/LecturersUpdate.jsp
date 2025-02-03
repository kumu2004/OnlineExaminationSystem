<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Lecturers Info</title>
    <style>
        body {
            background-image: url(Images/1.jpg);
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            width: 50%;
            margin: 50px auto;
            background: white;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        input, textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: #5cb85c;
            color: white;
            border: none;
            cursor: pointer;
            padding: 15px;
        }
        input[type="submit"]:hover {
            background-color: #4cae4c;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Update Lecturer Information</h2>
    <form action="LecturersUpdateServlet" method="post">
        <label for="Lecid">Lecturer ID :</label>
        <input type="text" id="Lecid" name="Lecid" required>

        <label for="lecturerName">Lecturer Name :</label>
        <input type="text" id="lecturerName" name="lecturerName" required>

        <label for="Email">Email :</label>
        <input type="email" id="Email" name="Email" required>

        <label for="Department">Department :</label>
        <input type="text" id="Department" name="Department" required>

        <input type="submit" value="Update">
    </form>
</div>

</body>
</html>
