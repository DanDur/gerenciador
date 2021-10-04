<%@page import="org.apache.taglibs.standard.tag.common.xml.ForEachTag"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.List, br.com.alura.gerenciador.servlet.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Java Standard Taglib</title>
</head>
<body>
	<c:if test="${not empty empresa}" >
			Empresa ${ empresa }  cadastrada com sucesso!
	
	</c:if>

			Lista de empresas: <br />
	<ul>		
		<c:forEach items="${empresas}" var="empresa"> 
			
			<li>
			${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/> 
			<a href="/gerenciador/mostraEmpresa?id="${empresa.id}>edita</a>
			<a href="/gerenciador/removeEmpresa?id="${empresa.id}>remove</a>
			
			</li>
		</c:forEach>
	</ul>
	
</body>
</html>