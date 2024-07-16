<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Grades</title>
</head>
<body>
    <h1>Student Grades</h1>
    <table border="1">
        <thead>
            <tr>
                <th>Exam ID</th>
                <th>Exam Date</th>
                <th>Duration</th>
                <th>Assessment Name</th>
                <th>Score</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="grade" items="${grades}">
                <tr>
                    <td>${grade.exam.id}</td>
                    <td>${grade.exam.from}</td>
                    <td>${grade.exam.duration}</td>
                    <td>${grade.exam.assessment.name}</td>
                    <td>${grade.score}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
