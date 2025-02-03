<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Exam Info</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            width: 50%;
            margin: 0 auto;
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
        <h2>Update Exam Information</h2>
        <form action="UpdateServlet" method="post">
            <label for="id">ID:</label>
            <input type="text" id="id" name="id" required>
            
       		 <label for="examName">Exam Name</label>
      	     <input type="text" id="examName" name="examName" required>

        	 <label for="examDate">Date</label>
      	     <input type="date" id="eDate" name="eDate" required>

      		  <label for="examTime">Time</label>
     	      <input type="time" id="eTime" name="eTime" required>

        	  <label for="examDuration">Duration (minutes)</label>
      	      <input type="number" id="eDuration" name="eDuration" required>

      	      <input type="submit" value="Update">
        </form>
    </div>

</body>
</html>