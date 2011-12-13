<%@ page import="radicom_clientes.Cliente" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="nav">
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    </span>
    <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label"
                                                                               args="[entityName]"/></g:link></span>
</div>

<div class="body">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>
    <div class="list">
        <table>
            <thead>
            <tr>

                <g:sortableColumn property="id" title="${message(code: 'cliente.id.label', default: 'Id')}"/>

                <g:sortableColumn property="apoio_movel"
                                  title="${message(code: 'cliente.apoio_movel.label', default: 'Apoiomovel')}"/>

                <g:sortableColumn property="dia_cobranca"
                                  title="${message(code: 'cliente.dia_cobranca.label', default: 'Diacobranca')}"/>

                <g:sortableColumn property="endereco"
                                  title="${message(code: 'cliente.endereco.label', default: 'Endereco')}"/>

                <g:sortableColumn property="nome" title="${message(code: 'cliente.nome.label', default: 'Nome')}"/>

                <g:sortableColumn property="telefone"
                                  title="${message(code: 'cliente.telefone.label', default: 'Telefone')}"/>

            </tr>
            </thead>
            <tbody>
            <g:each in="${clienteInstanceList}" status="i" var="clienteInstance">
                <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

                    <td><g:link action="show"
                                id="${clienteInstance.id}">${fieldValue(bean: clienteInstance, field: "id")}</g:link></td>

                    <td><g:formatBoolean boolean="${clienteInstance.apoio_movel}"/></td>

                    <td><g:formatDate date="${clienteInstance.dia_cobranca}"/></td>

                    <td>${fieldValue(bean: clienteInstance, field: "endereco")}</td>

                    <td>${fieldValue(bean: clienteInstance, field: "nome")}</td>

                    <td>${fieldValue(bean: clienteInstance, field: "telefone")}</td>

                </tr>
            </g:each>
            </tbody>
        </table>
    </div>

    <div class="paginateButtons">
        <g:paginate total="${clienteInstanceTotal}"/>
    </div>
</div>
</body>
</html>
