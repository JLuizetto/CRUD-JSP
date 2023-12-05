<%-- 
    Document   : pagcadastrar
    Created on : 31/10/2017, 08:20:36
    Author     : asenj
--%>

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
        
        tpsemana11.ALDAL.set(umusuario);
 
        if(tpsemana11.Erro.getErro())
            out.println(tpsemana11.Erro.getMens());
        else
            out.println("Usuario cadastrado com sucesso!");  
        %>
    </body>
</html>
