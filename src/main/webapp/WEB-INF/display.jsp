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
    <title>Fortune Teller </title>
</head>
<body>
<h1>
    <c:out value="${dataFormFinal}"/>
</h1>
</body>
</html>
