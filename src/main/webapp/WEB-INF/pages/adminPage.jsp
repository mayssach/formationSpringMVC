<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>

<html>
<head>
    <head>
        <meta charset="ISO-8859-1">
        <title>Insert title here</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
</head>
<body>
<jsp:include page="_menu.jsp" />
<div class="container">
    <div class="card">
        <div class="card-body">
<h3>Welcome : ${pageContext.request.userPrincipal.name}</h3></div></div></div>
<b>This is protected page!</b>
</body>
</html>