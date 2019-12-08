<%-- 
    Document   : Index
    Created on : 27 de nov de 2019, 21:54:50
    Author     : Henrique
--%>

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
    <link href="${pageContext.request.contextPath}/img/secretariadesaude.jpg" type="img/png">
    <link href="${pageContext.request.contextPath}/img/adm_7.jpg" type="img/png">
    <link href="${pageContext.request.contextPath}/img/doacaodesangue.png" type="img/png">
    <link href="${pageContext.request.contextPath}/img/transporte.jpg" type="img/png">
    <link href="${pageContext.request.contextPath}/img/policia.jpg" type="img/png">
    <link href="${pageContext.request.contextPath}/img/anonovo.jpg" type="img/png">
    <link href="${pageContext.request.contextPath}/img/banner1.png" type="img/png">
    
</head>

<body>

<%@include file="../enjoy/nav.jsp" %>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
  
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <div class="carousel-inner">
    <div class="item active">
      <img src="${pageContext.request.contextPath}/img/banner1.png" alt="banner1">
      <img src="${pageContext.request.contextPath}/img/banner2.png" alt="banner2">
      <div class="carousel-caption">
      </div>
    </div>
</div>
<a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
      <br>

<!-- Abaixo do Banner -->
<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <h3>Secretaria de Saúde</h3>
      <p>Secretaria de Saúde realiza audiência pública para prestação de contas.</p>
    </div>
    <div class="col-sm-4">
      <h3>Administração</h3>
      <p>Governo de Milagres empossa novos concursados.</p>
    </div>
    <div class="col-sm-4">
      <h3>Milagres</h3>        
      <p>Dia do Doador voluntário de sangue.</p>
    </div>
  </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="/w3images/lights.jpg" target="_blank">
          <img src="${pageContext.request.contextPath}/img/secretariadesaude.jpg" alt="Lights" style="width:100%">
          <div class="caption">
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="/w3imagesnature.jpg" target="_blank">
          <img src="${pageContext.request.contextPath}/img/adm_7.jpg" alt="Nature" style="width:100%">
          <div class="caption">
            
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="/w3images/fjords.jpg" target="_blank">
          <img src="${pageContext.request.contextPath}/img/doacaodesangue.png" alt="Fjords" style="width:100%">
          <div class="caption">
          </div>
        </a>
      </div>
    </div>
  </div>
</div>


<!-- Segunda coluna -->
<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <h3>Transporte</h3>
      <p>Novos investimentos são feitos para melhorar o transporte escolar.</p>
    </div>
    <div class="col-sm-4">
      <h3>Segurança</h3>
      <p>3 novas viaturas são compradas.</p>
    </div>
    <div class="col-sm-4">
      <h3>Ano Novo</h3>        
      <p>Confira a programação na próxima semana.</p>
    </div>
  </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="/w3images/lights.jpg" target="_blank">
          <img src="${pageContext.request.contextPath}/img/transporte.jpg" alt="Lights" style="width:100%">
          <div class="caption">
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="/w3images/nature.jpg" target="_blank">
          <img src="${pageContext.request.contextPath}/img/policia.jpg" alt="Nature" style="width:100%">
          <div class="caption">
            
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="/w3images/fjords.jpg" target="_blank">
          <img src="${pageContext.request.contextPath}/img/anonovo.jpg" alt="Fjords" style="width:100%">
          <div class="caption">
          </div>
        </a>
      </div>
    </div>
  </div>
</div>
  

    <%@include file="../enjoy/footer.jsp" %>


</body>
</html>