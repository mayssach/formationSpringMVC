<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="false"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <!-- Links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href="login">Login</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="viewpersonnes">Liste des personnes</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="personneform">Ajout</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="recherchepersonne">Recherche</a>
        </li>
    </ul>
</nav>
<div class="container">
    <div class="card">
        <div class="card-body">
            <h3 align="center">Bonjour ${message}</h3>
        </div>
    </div>
</div>
</body>
</html>