<%-- 
    Document   : Peca
    Created on : 27/05/2019, 17:09:09
    Author     : ubnt
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Pojo.PecaPojo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.PecaDao"%>
<%
    PecaDao pecaDao = new PecaDao();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        
        <title>JSP Page</title>        
    </head>
    <body>
        <%
            ArrayList<PecaPojo> listPecaPojo = (ArrayList<PecaPojo>) request.getAttribute("listPecaPojo");
        %>
                
        <nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
        <a class="navbar-brand" href="#">Oficina</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav mr-auto">

            <li class="nav-item active">
              <a class="nav-link" href="./index.html">Home</a>
            </li>

            <li class="nav-item active">
              <a class="nav-link" href="PecaServlet">Peças</a>                  
          </ul>                  
        </div>
      </nav>        
        
        <h3 ALIGN="center">Tabela de Peças</h3>
        
      <table class="table table-bordered  table-hover table-sm">
    <thead>
      <tr>
        <th scope="col">Identificador</th>
        <th scope="col">Nome</th>
        <th scope="col">Preço</th>
        <th scope="col">Unidade</th>
      </tr>
    </thead>
    
    <tbody>
    <% for (int i = 0; i < listPecaPojo.size(); i++) { %>
        <tr>          
         <% PecaPojo pc = listPecaPojo.get(i); %>
         <td><%out.print(pc.getPid());%></td>
          <td><%out.print(pc.getNome());%></td>
          <td><%out.print(pc.getPreco());%></td>
          <td><%out.print(pc.getUnidade());%></td>        
        </tr>        
      <%} %>
    </tbody>
  </table>
                  
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
