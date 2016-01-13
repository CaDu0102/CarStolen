<%@ page import="carstolen.Policial" %>



<div class="fieldcontain ${hasErrors(bean: policialInstance, field: 'nomeCompleto', 'error')} required">
	<label for="nomeCompleto">
		<g:message code="policial.nomeCompleto.label" default="Nome Completo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="nomeCompleto" cols="40" rows="5" maxlength="255" required="" value="${policialInstance?.nomeCompleto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: policialInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="policial.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="usuario" maxlength="50" required="" value="${policialInstance?.usuario}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: policialInstance, field: 'senha', 'error')} required">
	<label for="senha">
		<g:message code="policial.senha.label" default="Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="senha" maxlength="20" required="" value="${policialInstance?.senha}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: policialInstance, field: 'cargo', 'error')} required">
	<label for="cargo">
		<g:message code="policial.cargo.label" default="Cargo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="cargo" from="${carstolen.Cargo?.values()}" keys="${carstolen.Cargo.values()*.name()}" required="" value="${policialInstance?.cargo?.name()}" />

</div>

