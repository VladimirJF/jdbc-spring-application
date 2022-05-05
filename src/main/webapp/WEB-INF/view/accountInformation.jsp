<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
        <h2 class="panel-title">Account Information</h2>
    </div>
    <div class="input-group">
        <form:form action="saveAccount" modelAttribute="account">
            <form:hidden path="id"/>
            <table>
                <tr>
                    <td><form:label path="firstName">First name</form:label></td>
                    <td><form:input path="firstName"/></td>
                </tr>
                <tr>
                    <td><form:label path="lastName">Last Name</form:label></td>
                    <td><form:input path="lastName"/></td>
                </tr>
                <tr>
                    <td><form:label path="age">Age</form:label></td>
                    <td><form:input path="age"/></td>
                </tr>
                <tr>
                    <td><form:label path="email">Email</form:label></td>
                    <td><form:input path="email"/></td>
                </tr>
                <tr>
                    <td><input class="btn btn-primary" type="submit" value="OK"/></td>
                </tr>
            </table>
        </form:form>
    </div>
</div>
<script src="http://cdn.jsdelivr.net/webjars/jquery/3.5.1/jquery.min.js"
        th:src="@{/webjars/jquery/3.5.1/jquery.min.js}"></script>
</body>
</html>
