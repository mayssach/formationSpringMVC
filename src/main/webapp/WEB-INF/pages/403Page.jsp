<%@page session="false"%>
<html>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Access Denied</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<jsp:include page="_menu.jsp"/>
<div class="container">
    <div class="card">
        <div class="card-body">
<h3 style="color:red;">${message}</h3>
        </div></div></div>
</body>
</html>