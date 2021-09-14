<%-- 
    Document   : index
    Created on : 13 de set. de 2021, 20:57:41
    Author     : Nickolas Daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina Inicial</title>
<style type="text/css">
div {text-align: center}
</style>
    </head>


    <body style="background-color: cadetblue">
        <div><h1>Projeto JAVA EE - Tabela Price</h1>
        <%@include file="WEB-INF/jsfp/header-menu.jspf" %></div>
    <hr>   
    <div style="align-content: center"><h2>Nickolas Daniel Dos Santos Bento</h2>
        <h2>RA:1290482013042</h2>
   </div><br><br>
         
<div>   
       <h2>Tabela Prince</h2>
       <form action="<%= request.getContextPath()%>/pages/tabela-prince.jsp">
        <h3> Quantidade de Meses </h3> 
        <input type="number" name="periodo" value="1"/>
        <h3> Valor </h3> 
        <input type="number" name="valor" value="0"/>
        <h3> Juros </h3> 
        <input type="number" name="juros" value="0.0"/>
        
        <input type="submit" value="Gerar"/>
        </form>
    </div>    
    </body>

    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <hr> 
    <div style="padding-top: 50px">
        <%@include file="WEB-INF/jsfp/footer.jspf" %></div>>
</html>
