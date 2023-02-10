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
    <h1>modifier une Personne:</h1>
    <div class="card">
        <div class="card-body">
            <form:form method="post" action="/formationSpringMVC/editsave">
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Nom</label>
                    <div class="col-sm-7">
                        <form:hidden  path="id" />
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Nom</label>
                    <div class="col-sm-7">
                        <form:input path="nom" class="form-control" name="nom"/>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Prenom</label>
                    <div class="col-sm-7">
                        <form:input path="prenom" class="form-control" name="prenom"/>
                    </div>
                </div>

                <div class=" form-group row">
                    <label class="col-sm-2 col-form-label">Civilite</label>
                    <div class="col-sm-7">
                        <select name="civilite">
                            <option value="M.">M.</option>
                            <option value="Mme">Mme</option>
                            <option value="Melle">Melle</option>
                        </select>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Adresse</label>
                    <div class="col-sm-7">
                        <form:input  path="adresse" class="form-control" name="adresse"/>
                    </div>
                </div>

                <div class="form-group row">
                    <label  class="col-sm-2 col-form-label">Date de naissance</label>
                    <div class="col-sm-7">
                        <form:input type="date" path="dateNaissance" class="form-control" name="dateNaissance"/>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary" value="Save">Modifier</button>
                <button type="submit" class="btn btn-primary" onclick="viewpersonnes">Annuler</button>

            </form:form>
        </div>
    </div>
</div>
</body>
</html>
