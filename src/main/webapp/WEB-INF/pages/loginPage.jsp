<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
            <h3>S'authentifier !</h3>
            <c:if test="${param.error == 'true'}">
            <div style="color:red;margin:10px 0px;">

                Login Failed!!!<br/>
                Reason :  ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}

            </div>
            </c:if>
            <form name='f' action="${pageContext.request.contextPath}/j_spring_security_check" method='POST'>
                <table>
                    <tr>
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">User:</label>
                            <div class="col-sm-7">
                                <input type="text" class="form-control" name="username">
                            </div>
                        </div>
                    </tr>
                    <tr>
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">Password</label>
                            <div class="col-sm-7">
                                <input type="password" class="form-control" name="password">
                            </div>
                        </div>
                    </tr>
                    <tr>
                        <button type="submit" name="submit" class="btn btn-primary" value="submit">Login</button>
                    </tr>
                </table>
            </form>
</body>
</html>