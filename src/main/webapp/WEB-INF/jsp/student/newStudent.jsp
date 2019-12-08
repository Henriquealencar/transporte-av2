<%-- 
    Document   : newStudent
    Created on : 25 de nov de 2019, 14:11:30
    Author     : Henrique
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
<h2> Cadastro de Estudantes</h2>
<div style="width: 100%; height: 50%; margin-bottom: 400px;">
<form action="novo" method="POST">
  <div class="col-xs-10">
    <label for="name">Nome</label>
    <input type="nome" class="form-control" id="exampleInputNome1" aria-describedby="nomeHelp" placeholder="Seu nome" name="student.nome">
  </div>

  <div class="col-xs-10">
    <label for="cpf">CPF</label>
    <input type="cpf" class="form-control" id="exampleInputCPF1" placeholder="CPF" name="student.cpf">
  </div>

  <div class="col-xs-10">
    <label for="faculdade">Faculdade</label>
    <input type="faculdade" class="form-control" id="exampleInputFaculdade1" placeholder="Faculdade" name="student.faculdade">
  </div>

  <div class="col-xs-10">
    <label for="rua">Rua</label>
    <input type="rua" class="form-control" id="exampleInputRua1" placeholder="Rua" name="student.endereco.rua">
  </div>

    
  <div class="col-xs-10">
    <label for="bairro">Bairro</label>
    <input type="bairro" class="form-control" id="exampleInputBairro1" placeholder="Bairro" name="student.endereco.bairro">
  </div>
    
  <div class="col-xs-10">
    <label for="numero">Número</label>
    <input type="número" class="form-control" id="exampleInputNúmero1" placeholder="Número" name="student.endereco.numero">
  </div><br><br>
  
  <div class="col-xs-10" style="margin: 10px 0 10px 0; text-align: center;">
        <button type="submit" class="btn btn-primary">Cadastrar</button>
    </div>
</form>
</div>  

    <%@include file="../enjoy/footer.jsp" %>


</body>
</html>
