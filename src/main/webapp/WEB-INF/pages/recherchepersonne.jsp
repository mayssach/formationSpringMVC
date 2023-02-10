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
<jsp:include page="_menu.jsp" />
<div class="container">
    <h1>Rechercher une personne:</h1>
    <div class="card">
        <div class="card-body">
            <form method="post" action="/formationSpringMVC/viewrecherche">

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Nom</label>
                <div class="col-sm-7">
                    <input path="nom" class="form-control" name="nom">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Prenom</label>
                <div class="col-sm-7">
                    <input path="prenom" class="form-control" name="prenom">
                </div>
            </div>

            <div class=" form-group row">
                <label class="col-sm-2 col-form-label">Civilite</label>
                <div class="col-sm-7">
                    <select name="civilite" id="civilite" path="civilite" >
                        <option value=""></option>
                        <option value="M.">M.</option>
                        <option value="Mme">Mme</option>
                        <option value="Melle">Melle</option>
                    </select>
                </div>
            </div>
            <button type="submit" class="btn btn-primary" value="Rechercher">Rechercher</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>