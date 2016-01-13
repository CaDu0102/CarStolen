
<%@ page import="carstolen.Policial" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'policial.label', default: 'Policial')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-policial" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-policial" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nomeCompleto" title="${message(code: 'policial.nomeCompleto.label', default: 'Nome Completo')}" />
					
						<g:sortableColumn property="usuario" title="${message(code: 'policial.usuario.label', default: 'Usuario')}" />
					
						<g:sortableColumn property="senha" title="${message(code: 'policial.senha.label', default: 'Senha')}" />
					
						<g:sortableColumn property="cargo" title="${message(code: 'policial.cargo.label', default: 'Cargo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${policialInstanceList}" status="i" var="policialInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${policialInstance.id}">${fieldValue(bean: policialInstance, field: "nomeCompleto")}</g:link></td>
					
						<td>${fieldValue(bean: policialInstance, field: "usuario")}</td>
					
						<td>${fieldValue(bean: policialInstance, field: "senha")}</td>
					
						<td>${fieldValue(bean: policialInstance, field: "cargo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${policialInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
