
<%@ page import="carstolen.Carro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'carro.label', default: 'Carro')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-carro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-carro" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list carro">
			
				<g:if test="${carroInstance?.corPrediminante}">
				<li class="fieldcontain">
					<span id="corPrediminante-label" class="property-label"><g:message code="carro.corPrediminante.label" default="Cor Prediminante" /></span>
					
						<span class="property-value" aria-labelledby="corPrediminante-label"><g:fieldValue bean="${carroInstance}" field="corPrediminante"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carroInstance?.letraPlaca}">
				<li class="fieldcontain">
					<span id="letraPlaca-label" class="property-label"><g:message code="carro.letraPlaca.label" default="Letra Placa" /></span>
					
						<span class="property-value" aria-labelledby="letraPlaca-label"><g:fieldValue bean="${carroInstance}" field="letraPlaca"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carroInstance?.numeroPlaca}">
				<li class="fieldcontain">
					<span id="numeroPlaca-label" class="property-label"><g:message code="carro.numeroPlaca.label" default="Numero Placa" /></span>
					
						<span class="property-value" aria-labelledby="numeroPlaca-label"><g:fieldValue bean="${carroInstance}" field="numeroPlaca"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carroInstance?.chassi}">
				<li class="fieldcontain">
					<span id="chassi-label" class="property-label"><g:message code="carro.chassi.label" default="Chassi" /></span>
					
						<span class="property-value" aria-labelledby="chassi-label"><g:fieldValue bean="${carroInstance}" field="chassi"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carroInstance?.marca}">
				<li class="fieldcontain">
					<span id="marca-label" class="property-label"><g:message code="carro.marca.label" default="Marca" /></span>
					
						<span class="property-value" aria-labelledby="marca-label"><g:fieldValue bean="${carroInstance}" field="marca"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carroInstance?.modelo}">
				<li class="fieldcontain">
					<span id="modelo-label" class="property-label"><g:message code="carro.modelo.label" default="Modelo" /></span>
					
						<span class="property-value" aria-labelledby="modelo-label"><g:fieldValue bean="${carroInstance}" field="modelo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carroInstance?.anoFrabricacao}">
				<li class="fieldcontain">
					<span id="anoFrabricacao-label" class="property-label"><g:message code="carro.anoFrabricacao.label" default="Ano Frabricacao" /></span>
					
						<span class="property-value" aria-labelledby="anoFrabricacao-label"><g:formatDate date="${carroInstance?.anoFrabricacao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${carroInstance?.categoria}">
				<li class="fieldcontain">
					<span id="categoria-label" class="property-label"><g:message code="carro.categoria.label" default="Categoria" /></span>
					
						<span class="property-value" aria-labelledby="categoria-label"><g:fieldValue bean="${carroInstance}" field="categoria"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${carroInstance?.combustivel}">
				<li class="fieldcontain">
					<span id="combustivel-label" class="property-label"><g:message code="carro.combustivel.label" default="Combustivel" /></span>
					
						<span class="property-value" aria-labelledby="combustivel-label"><g:fieldValue bean="${carroInstance}" field="combustivel"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:carroInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${carroInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
