
<%@ page import="carstolen.Policial" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'policial.label', default: 'Policial')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-policial" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-policial" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list policial">
			
				<g:if test="${policialInstance?.nomeCompleto}">
				<li class="fieldcontain">
					<span id="nomeCompleto-label" class="property-label"><g:message code="policial.nomeCompleto.label" default="Nome Completo" /></span>
					
						<span class="property-value" aria-labelledby="nomeCompleto-label"><g:fieldValue bean="${policialInstance}" field="nomeCompleto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${policialInstance?.usuario}">
				<li class="fieldcontain">
					<span id="usuario-label" class="property-label"><g:message code="policial.usuario.label" default="Usuario" /></span>
					
						<span class="property-value" aria-labelledby="usuario-label"><g:fieldValue bean="${policialInstance}" field="usuario"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${policialInstance?.senha}">
				<li class="fieldcontain">
					<span id="senha-label" class="property-label"><g:message code="policial.senha.label" default="Senha" /></span>
					
						<span class="property-value" aria-labelledby="senha-label"><g:fieldValue bean="${policialInstance}" field="senha"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${policialInstance?.cargo}">
				<li class="fieldcontain">
					<span id="cargo-label" class="property-label"><g:message code="policial.cargo.label" default="Cargo" /></span>
					
						<span class="property-value" aria-labelledby="cargo-label"><g:fieldValue bean="${policialInstance}" field="cargo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:policialInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${policialInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
