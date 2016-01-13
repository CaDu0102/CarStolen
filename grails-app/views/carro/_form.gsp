<%@ page import="carstolen.Carro" %>



<div class="fieldcontain ${hasErrors(bean: carroInstance, field: 'corPrediminante', 'error')} required">
	<label for="corPrediminante">
		<g:message code="carro.corPrediminante.label" default="Cor Prediminante" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="corPrediminante" maxlength="20" required="" value="${carroInstance?.corPrediminante}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: carroInstance, field: 'letraPlaca', 'error')} required">
	<label for="letraPlaca">
		<g:message code="carro.letraPlaca.label" default="Letra Placa" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="letraPlaca" maxlength="3" required="" value="${carroInstance?.letraPlaca}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: carroInstance, field: 'numeroPlaca', 'error')} required">
	<label for="numeroPlaca">
		<g:message code="carro.numeroPlaca.label" default="Numero Placa" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numeroPlaca" type="number" min="0" value="${carroInstance.numeroPlaca}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: carroInstance, field: 'chassi', 'error')} required">
	<label for="chassi">
		<g:message code="carro.chassi.label" default="Chassi" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="chassi" maxlength="17" required="" value="${carroInstance?.chassi}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: carroInstance, field: 'marca', 'error')} required">
	<label for="marca">
		<g:message code="carro.marca.label" default="Marca" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="marca" maxlength="20" required="" value="${carroInstance?.marca}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: carroInstance, field: 'modelo', 'error')} required">
	<label for="modelo">
		<g:message code="carro.modelo.label" default="Modelo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="modelo" maxlength="20" required="" value="${carroInstance?.modelo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: carroInstance, field: 'anoFrabricacao', 'error')} required">
	<label for="anoFrabricacao">
		<g:message code="carro.anoFrabricacao.label" default="Ano Frabricacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="anoFrabricacao" precision="day"  value="${carroInstance?.anoFrabricacao}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: carroInstance, field: 'categoria', 'error')} required">
	<label for="categoria">
		<g:message code="carro.categoria.label" default="Categoria" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="categoria" from="${carstolen.Categoria?.values()}" keys="${carstolen.Categoria.values()*.name()}" required="" value="${carroInstance?.categoria?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: carroInstance, field: 'combustivel', 'error')} required">
	<label for="combustivel">
		<g:message code="carro.combustivel.label" default="Combustivel" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="combustivel" from="${carstolen.Combustivel?.values()}" keys="${carstolen.Combustivel.values()*.name()}" required="" value="${carroInstance?.combustivel?.name()}" />

</div>

