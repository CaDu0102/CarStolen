<%@ page import="carstolen.Policial" %>

<!-- //Login -->
<div class="fieldcontain ${hasErrors(bean: policialInstance, field: 'usuario', 'error')} required">
    <label for="usuario">
        <g:message code="policial.usuario.label" default="Usuario" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="usuario" maxlength="50" required="" value="${policialInstance?.usuario}"/>

</div>

<!-- //Senha -->
<div class="fieldcontain ${hasErrors(bean: policialInstance, field: 'senha', 'error')} required">
    <label for="senha">
        <g:message code="policial.senha.label" default="Senha" />
        <span class="required-indicator">*</span>
    </label>
    <g:passwordField name="senha" maxlength="20" required="" value="${policialInstance?.senha}"/>

</div>