<%@ page import="carstolen.Dono" %>



<div class="fieldcontain ${hasErrors(bean: donoInstance, field: 'nomeCompleto', 'error')} required">
	<label for="nomeCompleto">
		<g:message code="dono.nomeCompleto.label" default="Nome Completo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="nomeCompleto" cols="40" rows="5" maxlength="255" required="" value="${donoInstance?.nomeCompleto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: donoInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="dono.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" maxlength="11" required="" value="${donoInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: donoInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="dono.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" maxlength="150" required="" value="${donoInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: donoInstance, field: 'telefoneFixo', 'error')} required">
	<label for="telefoneFixo">
		<g:message code="dono.telefoneFixo.label" default="Telefone Fixo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefoneFixo" maxlength="10" required="" value="${donoInstance?.telefoneFixo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: donoInstance, field: 'telefoneMovel', 'error')} required">
	<label for="telefoneMovel">
		<g:message code="dono.telefoneMovel.label" default="Telefone Movel" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefoneMovel" maxlength="11" required="" value="${donoInstance?.telefoneMovel}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: donoInstance, field: 'cnh', 'error')} required">
	<label for="cnh">
		<g:message code="dono.cnh.label" default="Cnh" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cnh" maxlength="11" required="" value="${donoInstance?.cnh}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: donoInstance, field: 'carros', 'error')} ">
	<label for="carros">
		<g:message code="dono.carros.label" default="Carros" />
		
	</label>
	<g:select name="carros" from="${carstolen.Carro.list()}" multiple="multiple" optionKey="id" size="5" value="${donoInstance?.carros*.id}" class="many-to-many"/>

</div>

