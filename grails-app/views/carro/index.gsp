
<%@ page import="carstolen.Carro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'carro.label', default: 'Carro')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-carro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                <li><g:link action="telaBuscar"/> </li>
			</ul>
		</div>
		<div id="list-carro" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="corPrediminante" title="${message(code: 'carro.corPrediminante.label', default: 'Cor Prediminante')}" />
					
						<g:sortableColumn property="letraPlaca" title="${message(code: 'carro.letraPlaca.label', default: 'Letra Placa')}" />
					
						<g:sortableColumn property="numeroPlaca" title="${message(code: 'carro.numeroPlaca.label', default: 'Numero Placa')}" />
					
						<g:sortableColumn property="chassi" title="${message(code: 'carro.chassi.label', default: 'Chassi')}" />
					
						<g:sortableColumn property="marca" title="${message(code: 'carro.marca.label', default: 'Marca')}" />
					
						<g:sortableColumn property="modelo" title="${message(code: 'carro.modelo.label', default: 'Modelo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${carroInstanceList}" status="i" var="carroInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${carroInstance.id}">${fieldValue(bean: carroInstance, field: "corPrediminante")}</g:link></td>
					
						<td>${fieldValue(bean: carroInstance, field: "letraPlaca")}</td>
					
						<td>${fieldValue(bean: carroInstance, field: "numeroPlaca")}</td>
					
						<td>${fieldValue(bean: carroInstance, field: "chassi")}</td>
					
						<td>${fieldValue(bean: carroInstance, field: "marca")}</td>
					
						<td>${fieldValue(bean: carroInstance, field: "modelo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${carroInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
