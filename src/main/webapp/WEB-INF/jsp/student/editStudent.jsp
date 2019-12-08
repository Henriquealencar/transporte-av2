<%-- 
    Document   : editStudent
    Created on : 25 de nov de 2019, 14:10:34
    Author     : Henrique
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
</head>

<body>
    
<%@include file="../enjoy/nav.jsp" %>
<div> 
    <form action="${pageContext.request.contextPath}/student/editar" method="POST" style="width: 100%; height: 50%; margin-bottom: 400px; "><br>
        <h2> Edição de Estudantes</h2><br>
        <div class="col-xs-10">
            <label><h4>CPF: ${student.cpf}</h4></label>
        </div>
  
        <div class="col-xs-10">
            <label for="exampleInputEmail1">Nome</label>
            <input type="nome" class="form-control" id="exampleInputNome1" aria-describedby="nomeHelp" name="student.nome" value="${student.nome}">
        </div>

        <div class="col-xs-10">
            <label for="exampleInputPassword1">Faculdade</label>
            <input type="faculdade" class="form-control" id="faculdade" name="student.faculdade" value="${student.faculdade}">
        </div>

        <div class="col-xs-10">
            <label for="exampleInputPassword1">Rua</label>
            <input type="rua" class="form-control" id="rua" name="student.endereco.rua" value="${student.endereco.rua}">
        </div>

        <div class="col-xs-10">
            <label for="exampleInputPassword1">Número</label>
            <input type="número" class="form-control" id="número" name="student.endereco.numero" value="${student.endereco.numero}">
        </div>

        <div class="col-xs-10">
            <label for="exampleInputPassword1">Bairro</label>
            <input type="bairro" class="form-control" id="bairro" name="student.endereco.bairro" value="${student.endereco.bairro}">
        </div>
    
        <div class="col-xs-10" style="margin: 10px 0 10px 0; text-align: center;">
            <button type="submit" class="btn btn-primary" name="action">Editar Aluno</button>
        </div>
    </form>
</div>
<%@include file="../enjoy/footer.jsp" %>
</body>
</html>




