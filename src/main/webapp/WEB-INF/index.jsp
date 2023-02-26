<%--
  Created by IntelliJ IDEA.
  User: jprodsanz
  Date: 2/25/23
  Time: 10:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ page isErrorPage="true"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Omikuji</title>
</head>
<body>
<h3>Form Omikuji</h3>
<form action='/submitForm' method='post'>
    <div class="mb-3">
        <label class="form-label">Pick any number from 5 to 25:</label>
        <input class="form-control" type="number" name="randomNum">
    </div>
    <div class="mb-3">
        <label class="form-label">Enter the name of any city:</label>
        <input class="form-control" type="text" name="city">
    </div>
    <div class="mb-3">
        <label class="form-label">Enter the name of any human:</label>
        <input class="form-control" type="text" name="humanName">
    </div>
    <div class="mb-3">
        <label class="form-label">Enter profession:</label>
        <input class="form-control" type="text" name="profession">
    </div>
    <div class="mb-3">
        <label class="form-label">Enter any type of living thing:</label>
        <input class="form-control" type="text" name="livingThing">
    </div>
    <div class="mb-3">
        <label class="form-label">Say something nice to someone:</label>
        <input class="form-control" type="text" name="saySomethingNice">
    </div>
    <div>
        <label>Enter Data:</label>
        <input class="btn btn-danger" type='submit' value='Submit'>
    </div>
</form>
</body>
</html>
