<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="th" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="http://cdn.jsdelivr.net/webjars/bootstrap/5.1.3/css/bootstrap.min.css"
          th:href="@{/webjars/bootstrap/5.1.3/css/bootstrap.min.css}"
          rel="stylesheet" media="screen"/>
</head>
<body>
<div class="container">
    <div class="panel-heading">
        <h2 class="panel-title">All Accounts</h2>
    </div>
    <table class="table table-bordered border-primary">
        <thead>
        <tr>
            <th>FirstName</th>
            <th>LastName</th>
            <th>Age</th>
            <th>Email</th>
            <th>Operations</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="acc" items="${allAccount}">

            <c:url var="updateButton" value="/updateInfo">
                <c:param name="accId" value="${acc.id}"/>
            </c:url>

            <c:url var="deleteButton" value="/deleteAccount">
                <c:param name="accId" value="${acc.id}"/>
            </c:url>

            <tr>
                <td>${acc.firstName}</td>
                <td>${acc.lastName}</td>
                <td>${acc.age}</td>
                <td>${acc.email}</td>
                <td>
                    <input type="button" value="Update"
                           onclick="window.location.href='${updateButton}'"/>
                    <input type="button" value="Delete"
                           onclick="window.location.href='${deleteButton}'"/>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="/addNewAccount" class="btn btn-primary">Add</a>
</div>
<script src="http://cdn.jsdelivr.net/webjars/jquery/3.5.1/jquery.min.js"
        th:src="@{/webjars/jquery/3.5.1/jquery.min.js}"></script>
</body>
</html>