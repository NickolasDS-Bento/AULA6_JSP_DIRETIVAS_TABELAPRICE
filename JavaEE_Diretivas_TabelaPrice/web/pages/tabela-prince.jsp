<%-- 
    Document   : tabela-prince
    Created on : 13 de set. de 2021, 21:05:09
    Author     : Nickolas Daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.text.DecimalFormat" %>
<% 
double valor = 1.5, juros = 1.5, periodo = 1.5;


String erro = null;
if (request.getParameter("periodo") == null){
     erro = "Não foram informados o parametro corretamente.";
} else{
try{

 //periodo = Integer.parseInt(request.getParameter("periodo"));
 periodo = Double.parseDouble(request.getParameter("periodo"));
 
}
catch(Exception e){

erro = "O parametro informado como periodo '(" +request.getParameter("periodo")+ ")' não é um número valido";

}
}

if (request.getParameter("valor") == null){
     erro = "Não foram informados o parametro corretamente.";
} else{
try{

 valor = Double.parseDouble(request.getParameter("valor"));
 
}
catch(Exception e){

erro = "O parametro informado como valor '(" +request.getParameter("valor")+ ")' não é um número valido";

}
}


if (request.getParameter("juros") == null){
     erro = "Não foram informados o parametro corretamente.";
} else{
try{

 juros = Double.parseDouble(request.getParameter("juros"));
 
}
catch(Exception e){

erro = "O parametro informado como juros '(" +request.getParameter("juros")+ ")' não é um número valido";

}
}




%>
<html>
    <head>
        <title>JavaEE - JSP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>JAVA EE</h1>
        <h2>Java Server Pages</h2>
        <h3>Tabuada</h3>
        <hr/>
        
        <h4><a href="<%= request.getContextPath()%>/index.jsp">Voltar</a></h4>
        <% if(erro != null) {%>
        <div style="color: red"><%= erro %></div>
        <% } else { %>
        <div>
            
            <table>
                
                <% for(int i=1; i<=periodo; i++){%>
                <tr>
                    <td><%= periodo %></td>
                    <td>x</td>
                    <td><%= i %></td>
                    <td>=</td>
                    <td><%= periodo*i %></td>
                    
                </tr>
                <% } %>
                
                
                
                
            </table>
            
            
            
            
        </div> 
        <% }  %>
        <hr>
        </br>
        
            
            
   </body>
            
            
            
            
            
</html>
