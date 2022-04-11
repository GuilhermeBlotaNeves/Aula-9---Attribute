<%--
Document : index
Created on : 11 de abr. de 2022, 13:58:33
Author : Fatec
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
if(request.getParameter("request-form") !=null){
request.setAttribute("userName", request.getParameter("name"));
}
//
if(request.getParameter("application-form") !=null){
application.setAttribute("userName", request.getParameter("name"));
}
if(request.getParameter("application-form-remove") !=null){
application.removeAttribute("userName");
}
//session - Httpsession
if(request.getParameter("session-form") !=null){
session.setAttribute("userName", request.getParameter("name"));
}
if(request.getParameter("session-form-remove") !=null){
session.removeAttribute("userName");
}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Attributos - JavaEE</title>
</head>
<body>
<h1>JavaEE - Aula 09</h1>
<hr>
<h2>Atributos de requisição (HttpRequest)</h2>
<%if(request.getAttribute("userName")!=null){%>
userName: <%= request.getAttribute("userName")%>
<%}else{%>
<form>
Nome: <input type="text" name="name"/>
<input type="submit" name="request-form"/>
</form>
<%}%>
<hr>
<h2>Atributos de requisição (Servletcontext)</h2>
<%if(application.getAttribute("userName") !=null) {%>
userName: <%= application.getAttribute("userName")%>
<form>
<input type="submit"
name="application-form-remove"
value="Remover"/>
</form>
<%}else{%>
<form>
Nome: <input type="text" name="name"/>
<input type="submit" name="application-form"/>
</form>
<%}%>
<hr>
<h2>Atributos de requisição (HttpSession)</h2>
<%if(session.getAttribute("userName") !=null) {%>
userName: <%= session.getAttribute("userName")%>
<form>
<input type="submit"
name="session-form-remove"
value="Remover"/>
</form>
<%}else{%>
<form>
Nome: <input type="text" name="name"/>
<input type="submit" name="session-form"/>
</form>
<%}%>
<hr> 
</body>
</html>