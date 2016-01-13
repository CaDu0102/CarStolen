<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'policial.label', default: 'Policial')}" />
    <title>Buscar Carro</title>

    <style>

        p {
            line-height: 0.7;
            margin: 1px 2px 3px 4px;
            padding: 10px;
            margin-left: 30px;
        }

        g{
            line-height: 0.7;
            margin: 1px 2px 3px 4px;
            padding: 10px;
            margin-left: 30px;

        }

        h1{
            line-height: 0.7;
            padding: 10px;
            margin-left: 20px;
            margin-top: 30px;
        }

        ul {
            font-size: 0.9em;
            list-style-type: none;
            margin-bottom: 0.6em;
            padding: 0;
            margin-left: 20px;
        }

        h2 {
            margin-left: 20px;
        }

    </style>

</head>

<body>


<a href="#create-carro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
    </ul>
</div>

<h1>Tela de Buscas<br/></h1>
<p><br/>Aqui a busca pode ser realizada pelo o Chassi do veiculo pertencente ao Estado do Rio de Janeiro<br/>

<br/><h2>Exemplo.: edc2134</h2>

        <p><br/></p>
       <ul> <g:form action="buscar">
            Digite o Chassi: <g:textField name="nome"></g:textField>
            <fildset class="buttons">
                <g:submitButton name="busca" class="save"> </g:submitButton>
            </fildset>
        </g:form>
        </ul>
</body>
</html>