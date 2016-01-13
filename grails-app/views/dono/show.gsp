
<%@ page import="carstolen.Dono" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'dono.label', default: 'Dono')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-dono" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-dono" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list dono">
			
				<g:if test="${donoInstance?.nomeCompleto}">
				<li class="fieldcontain">
					<span id="nomeCompleto-label" class="property-label"><g:message code="dono.nomeCompleto.label" default="Nome Completo" /></span>
					
						<span class="property-value" aria-labelledby="nomeCompleto-label"><g:fieldValue bean="${donoInstance}" field="nomeCompleto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donoInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="dono.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${donoInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donoInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="dono.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${donoInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donoInstance?.telefoneFixo}">
				<li class="fieldcontain">
					<span id="telefoneFixo-label" class="property-label"><g:message code="dono.telefoneFixo.label" default="Telefone Fixo" /></span>
					
						<span class="property-value" aria-labelledby="telefoneFixo-label"><g:fieldValue bean="${donoInstance}" field="telefoneFixo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donoInstance?.telefoneMovel}">
				<li class="fieldcontain">
					<span id="telefoneMovel-label" class="property-label"><g:message code="dono.telefoneMovel.label" default="Telefone Movel" /></span>
					
						<span class="property-value" aria-labelledby="telefoneMovel-label"><g:fieldValue bean="${donoInstance}" field="telefoneMovel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donoInstance?.cnh}">
				<li class="fieldcontain">
					<span id="cnh-label" class="property-label"><g:message code="dono.cnh.label" default="Cnh" /></span>
					
						<span class="property-value" aria-labelledby="cnh-label"><g:fieldValue bean="${donoInstance}" field="cnh"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donoInstance?.carros}">
				<li class="fieldcontain">
					<span id="carros-label" class="property-label"><g:message code="dono.carros.label" default="Carros" /></span>
					
						<g:each in="${donoInstance.carros}" var="c">
						<span class="property-value" aria-labelledby="carros-label"><g:link controller="carro" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:donoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${donoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
