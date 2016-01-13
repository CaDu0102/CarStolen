<!-- //Criado gsp para logar -->
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="Login" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
<a href="#create-usuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<div id="create-usuario" class="content scaffold-create" role="main">
    <h1><g:message code="default.create.label" args="[entityName]" /></h1>
    <g:if test="${flash.error}">
        <div class="message" role="status">${flash.error}</div>
    </g:if>
    <g:hasErrors bean="${usuarioInstance}">
        <ul class="errors" role="alert">  <!-- //mensagem de error-->
            <g:eachError bean="${usuarioInstance}" var="error"><!-- //mensagem de error -->
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>

<!-- //Botão de Logar -->
    <g:form url="[resource:usuarioInstance, action:'logar']" >
        <fieldset class="form">
            <g:render template="formLogin"/> <!-- //Usando o novo form para fazer login -->
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="Logar" class="save" value="Logar" />
        </fieldset>
    </g:form>
</div>
</body>
</html>
