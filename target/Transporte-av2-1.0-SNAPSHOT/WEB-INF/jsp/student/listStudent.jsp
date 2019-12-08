<%-- 
    Document   : listStudent
    Created on : 25 de nov de 2019, 14:11:10
    Author     : Henrique
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Estudantes</title>
    </head>
    <body>
        <%@include file="../enjoy/nav.jsp" %>
        <div class="container">

  <h2>Lista de Estudantes</h2>
  
  <form class="navbar-form navbar-left" action="busca" method="POST">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search" name="nome">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
</form>

  <div style="width: 100%; height: 50%; background-color: #ccc; margin-bottom: 400px;">
  <table class="table">
    <thead>
      <tr>
        <th>Nome</th>
        <th>Faculdade</th>
        <th>Editar</th>
      </tr>
    </thead>           
                <tbody>
                    <c:forEach items="${student}" var="student">
                        <tr>
                            <td>${student.nome}</td>            
                            <td>${student.faculdade}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/student/editar/${student.cpf}"><i class="material-icons teal-text">editar</i></a>                 
                            </td>           
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>                        
    <%@include file="../enjoy/footer.jsp" %>                        
    </body>
</html>
