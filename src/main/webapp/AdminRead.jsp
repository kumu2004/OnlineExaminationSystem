<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Model.AdminModel" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Details</title>
    <style>
        /* Styling for the body */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            flex-direction: column;
            align-items: center;
        }

        /* Heading styling */
        h1 {
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
            background-color: #007BFF;
            bottom: 0;
            left: 25%;
        }

        /* Styling for the table */
        table {
            width: 100%;
            max-width: 1000px;
            border-collapse: collapse;
            background-color: #fff;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ccc;
        }

        th {
            background-color: #007BFF;
            color: white;
            font-weight: bold;
        }

        tr:hover {
            background-color: rgba(0, 123, 255, 0.1);
        }

        /* No data styling */
        .no-data {
            text-align: center;
            color: #888;
            padding: 20px;
        }

        /* Styling for action buttons */
        .action-buttons {
            display: flex;
            gap: 10px;
        }

        .update-button {
            background: linear-gradient(90deg, #007BFF, #0056b3);
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 20px;
            cursor: pointer;
            transition: background 0.3s;
            text-decoration: none;
        }

        .update-button:hover {
            background: linear-gradient(90deg, #0056b3, #007BFF);
        }

        .delete-button {
            background-color: #dc3545;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 20px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .delete-button:hover {
            background-color: #c82333;
        }

        /* Table container styling */
        .table-container {
            background: #ffffff;
            border-radius: 20px;
            padding: 20px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            position: relative;
            overflow: hidden;
        }

        .table-container:before {
            content: '';
            position: absolute;
            top: -20px;
            left: -20px;
            right: -20px;
            bottom: -20px;
            background: radial-gradient(circle at 50% 50%, rgba(0, 123, 255, 0.2), transparent);
            border-radius: 30px;
            z-index: -1;
        }
    </style>
</head>
<body>

<h1>List of User Details</h1>

<div class="table-container">
    <table>
        <thead>
            <tr>
                <th>id</th>
                <th>Name</th>
                <th>Email</th>
                <th>Role</th>
                <th>Register Date</th>
                <th>Register Course</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:choose>
                <c:when test="${not empty allexams}">
                    <c:forEach var="exam" items="${allexams}">
                        <tr>
                            <td>${exam.id}</td>
                            <td>${exam.name}</td>
                            <td>${exam.email}</td>
                            <td>${exam.role}</td>
                            <td>${exam.registerDate}</td>
                            <td>${exam.registerCourse}</td>
                            <td>
                                <div class="action-buttons">
                                    <a href="AdminUpdate.jsp?build_id=${exam.id}&Name=${exam.Name}&Email=${exam.Email}&Role=${exam.Role}&RegisterDate=${exam.RegisterDate}&RegisterCourse=${exam.RegisterCourse}" class="update-button">Update</a>
                                    <form action="AdminDeleteServlet" method="post" onsubmit="return confirm('Are you sure you want to delete this user?');">
                                        <input type="hidden" name="id" value="${exam.id}">
                                        <input type="submit" value="Delete" class="delete-button">
                                    </form>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td colspan="7" class="no-data">No User available</td>
                    </tr>
                </c:otherwise>
            </c:choose>
        </tbody>
    </table>
</div>

</body>
</html>

