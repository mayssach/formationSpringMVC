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
        <h1>Liste des personnes</h1>
        <div class="card">
	<table class="table table-striped" >
	<tr><th scope="col">Id</th><th scope="col">nom</th><th scope="col">prenom</th><th scope="col">civilite</th><th scope="col">adresse</th><th scope="col">dateNaissance</th><th scope="col">Modifier</th><th scope="col">Supprimer</th></tr>
    <c:forEach var="personne" items="${list}">
    <tr>
    <td>${personne.id}</td>
    <td>${personne.nom}</td>
    <td>${personne.prenom}</td>
    <td>${personne.civilite}</td>
    <td>${personne.adresse}</td>
    <td>${personne.dateNaissance}</td>

        <td><a href="editform/${personne.id}">Modifier</a></td>
    <td><a href="delete/${personne.id}">Supprimer</a></td>
    </tr>
    </c:forEach>
    </table>
    </div>
    </div>
    </body></html>