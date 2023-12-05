<%-- 
    Document   : paglogar
    Created on : 03/09/2014, 12:20:36
    Author     : MauricioAsenjo
--%>

<%@page import="tpsemana11.ALDAL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
        packLogar.Login umusuario = new packLogar.Login();    
        umusuario.setUsuario(request.getParameter("usuario"));
        umusuario.setSenha(request.getParameter("senha"));
        
        
        tpsemana11.ALDAL.get(umusuario);

        if(tpsemana11.Erro.getErro())
            out.println("Usuario e/ou senha invalidos!");
        else
            out.println("Seja bem vindo " + umusuario.getUsuario());  
        %>
    </body>
</html>
