<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Model.ExamPlan" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Exam plane</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
        }
        h1 {
            text-align: center;
            color: #333;
            margin-top: 20px;
        }
        table {
            width: 70%;
            margin: 20px auto;
            border-collapse: collapse;
            border: 1px solid #ccc;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: left;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .no-data {
            text-align: center;
            color: #888;
            margin-top: 20px;
        }
    </style>
</head>
<body>

    <h1>Exam List</h1>

   <div class="table-container">
    <table>
        <thead>
            <tr>
                <th>id</th>
                <th>examName</th>
                <th>eDate</th>
                <th>eTime</th>
                <th>eDuration</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:choose>
                <c:when test="${not empty allexams}">
                    <c:forEach var="exam" items="${allexams}">
                        <tr>
                            <td>${exam.id}</td>
                            <td>${exam.examName}</td>
                            <td>${exam.eDate}</td>
                            <td>${exam.eTime}</td>
                            <td>${exam.eDuration}</td>
                           
                            <td>
                                <div class="action-buttons">
                                    <a href="Update.jsp?build_id=${exam.id}&examName=${exam.examName}&eDate=${exam.eDate}&eTime=${exam.eTime}&eDuration=${exam.eDuration}" class="update-button">Update</a>
                                    <form action="DeleteServlet" method="post" onsubmit="return confirm('Are you sure you want to delete this user?');">
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

