<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pl" lang="pl">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

</head>
<body>
	<%@ include file="../jspf/header.jspf"%>
	<%@ include file="../jspf/main_menu.jspf"%>

	<c:choose>

		<c:when test="${sessionScope.user == null}">
					Musisz być zalogowany aby mieć dostęp do tej treści 
				</c:when>

		<c:otherwise>
			<div class="form-style-8">
				<h2>TWOJE DANE</h2>
				<p>
					<!--User Name:-->
					Imię: ${user.firstName }
				</p>
				<p>
					<!--User LastName:-->
					Nazwisko: ${user.lastName }
				</p>
				<p>
					<!--Email:-->
					E-mail: ${user.email }
				</p>

				<a class="box" href="./myaccount/editUser">Edytuj</a> | <a
					class="box" href="./myaccount/delete">Usuń</a>
			</div>
		</c:otherwise>
	</c:choose>
	<%@ include file="../jspf/footer.jspf"%>
	
</body>
</html>