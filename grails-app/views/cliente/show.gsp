<%@ page import="radicom_clientes.Cliente" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<div class="nav">
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    </span>
    <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label"
                                                                           args="[entityName]"/></g:link></span>
    <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label"
                                                                               args="[entityName]"/></g:link></span>
</div>

<div class="body">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>
    <div class="dialog">
        <table>
            <tbody>

            <tr class="prop">
                <td valign="top" class="name"><g:message code="cliente.id.label" default="Id"/></td>

                <td valign="top" class="value">${fieldValue(bean: clienteInstance, field: "id")}</td>

            </tr>

            <tr class="prop">
                <td valign="top" class="name"><g:message code="cliente.apoio_movel.label" default="Apoiomovel"/></td>

                <td valign="top" class="value"><g:formatBoolean boolean="${clienteInstance?.apoio_movel}"/></td>

            </tr>

            <tr class="prop">
                <td valign="top" class="name"><g:message code="cliente.dia_cobranca.label" default="Diacobranca"/></td>

                <td valign="top" class="value"><g:formatDate date="${clienteInstance?.dia_cobranca}"/></td>

            </tr>

            <tr class="prop">
                <td valign="top" class="name"><g:message code="cliente.endereco.label" default="Endereco"/></td>

                <td valign="top" class="value">${fieldValue(bean: clienteInstance, field: "endereco")}</td>

            </tr>

            <tr class="prop">
                <td valign="top" class="name"><g:message code="cliente.nome.label" default="Nome"/></td>

                <td valign="top" class="value">${fieldValue(bean: clienteInstance, field: "nome")}</td>

            </tr>

            <tr class="prop">
                <td valign="top" class="name"><g:message code="cliente.telefone.label" default="Telefone"/></td>

                <td valign="top" class="value">${fieldValue(bean: clienteInstance, field: "telefone")}</td>

            </tr>

            <tr class="prop">
                <td valign="top" class="name"><g:message code="cliente.valor.label" default="Valor"/></td>

                <td valign="top" class="value">${fieldValue(bean: clienteInstance, field: "valor")}</td>

            </tr>

            </tbody>
        </table>
    </div>

    <div class="buttons">
        <g:form>
            <g:hiddenField name="id" value="${clienteInstance?.id}"/>
            <span class="button"><g:actionSubmit class="edit" action="edit"
                                                 value="${message(code: 'default.button.edit.label', default: 'Edit')}"/></span>
            <span class="button"><g:actionSubmit class="delete" action="delete"
                                                 value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                                 onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/></span>
        </g:form>
    </div>
</div>
</body>
</html>
