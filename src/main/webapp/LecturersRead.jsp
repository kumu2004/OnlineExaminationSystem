<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Model.LecturesModel" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lecturers Details</title>
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
        h1 {
            background: linear-gradient(red, blue);
            -webkit-background-clip: text;
            background-clip: text;
            -webkit-text-fill-color: transparent;
            text-align: center;
            margin: 10px;
            position: relative;
            padding-bottom: 10px;
        }
        h1:after {
            content: "";
            position: absolute;
            width: 50%;
            height: 4px;
            background-color: #007BFF; /* Blue underline */
            bottom: 0;
            left: 25%;
        }
        table {
            margin-left: auto;
            margin-right: auto;
            d-flex: justify-center;
            width: 100%; /* Table takes full width */
            max-width: 1000px; /* Set a max width */
            border-collapse: collapse; /* Merge borders */
            background-color: #fff; /* White background for the table */
            border-radius: 12px; /* Rounded corners */
            overflow: hidden; /* Ensures border radius works */
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1); /* Shadow for depth */
        }
        th, td {
            padding: 12px; /* Add padding for cells */
            text-align: left; /* Align text to the left */
            border-bottom: 1px solid #ccc; /* Bottom border for rows */
        }
        th {
            background-color: #007BFF; /* Blue background for header */
            color: white; /* White text */
            font-weight: bold; /* Bold text for headers */
        }
        tr:hover {
            background-color: rgba(0, 123, 255, 0.1); /* Light blue highlight on hover */
        }
        .no-data {
            text-align: center; /* Center the no data message */
            color: #888; /* Light gray color */
            padding: 20px; /* Add padding */
        }
        .action-buttons {
            display: flex;
            gap: 10px; /* Space between buttons */
        }
        .edit {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 3px;
            cursor: pointer;    
        
        }
        
        
        .delete {
            background-color: red;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 3px;
            cursor: pointer;
        }

      
        

        .edit:hover {
            background-color: #0056b3;
        }

        .delete:hover {
            background-color: #c82333;
        }
        }
        /* Adding a shape around the table */
        .table-container {
            margin-left: auto;
            margin-right: auto;
            d-flex: justify-center;
            background-color : #ffffff; /* White background */
            border-radius: 20px; /* Rounded corners */
            padding: 20px; /* Inner padding */
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1); /* Shadow for depth */
            position: relative; /* Relative positioning for shape */
            overflow: hidden; /* Ensure shapes stay within the container */
        }
        .table-container:before {
         margin-left: auto;
            margin-right: auto;
            d-flex: justify-center;
            content: '';
            position: absolute;
            top: -20px;
            left: -20px;
            right: -20px;
            bottom: -20px;
            background: radial-gradient(circle at 50% 50%, rgba(0, 123, 255, 0.2), transparent);
            border-radius: 30px; /* Larger rounded corners for shape */
            z-index: -1; /* Behind the table */
        }
    </style>
</head>
<body>

<h1>List of Lecturers Details</h1>

<div class="table-container">
    <table>
        <thead>
            <tr>
                <th>LecID</th>
                <th>lecturerName</th>
                <th>Email</th>
                <th>Department</th>
                <th>Action</th>
                
            </tr>
        </thead>
        <tbody>
            <c:choose>
                <c:when test="${not empty Lecturers}">
                    <c:forEach var="lecturer" items="${Lecturers}">
                        <tr>
                            <td>${lecturer.LecID}</td>
                            <td>${lecturer.lecturerName}</td>	
                            <td>${lecturer.Email}</td>
                            <td>${lecturer.Department}</td>
                            <td>
                                <div class="action-buttons">
                                    <a href="LecturersUpdate.jsp?LecID=${lecturer.LecID}" class="edit">Update</a>
                                    <form action="LecturersDeleteServlet" method="post" onsubmit="return confirm('Are you sure you want to delete this record?');">
                                        <input type="hidden" name="LecID" value="${lecturer.LecID}">
                                        <input type="submit" value="Delete" class="delete">
                                    </form>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td colspan="5" class="no-data">No Lecturers available</td>
                    </tr>
                </c:otherwise>
            </c:choose>
        </tbody>
    </table>
</div>

</body>
</html>