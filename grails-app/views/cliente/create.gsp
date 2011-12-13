<%@ page import="radicom_clientes.Cliente" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body>
<div class="nav">
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
    </span>
    <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label"
                                                                           args="[entityName]"/></g:link></span>
</div>

<div class="body">
    <h1><g:message code="default.create.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${clienteInstance}">
        <div class="errors">
            <g:renderErrors bean="${clienteInstance}" as="list"/>
        </div>
    </g:hasErrors>
    <g:form action="save">
        <div class="dialog">
            <table>
                <tbody>

                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="apoio_movel"><g:message code="cliente.apoio_movel.label"
                                                            default="Apoiomovel"/></label>
                    </td>
                    <td valign="top" class="value ${hasErrors(bean: clienteInstance, field: 'apoio_movel', 'errors')}">
                        <g:checkBox name="apoio_movel" value="${clienteInstance?.apoio_movel}"/>
                    </td>
                </tr>

                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="dia_cobranca"><g:message code="cliente.dia_cobranca.label"
                                                             default="Diacobranca"/></label>
                    </td>
                    <td valign="top" class="value ${hasErrors(bean: clienteInstance, field: 'dia_cobranca', 'errors')}">
                        <g:datePicker name="dia_cobranca" precision="day" value="${clienteInstance?.dia_cobranca}"/>
                    </td>
                </tr>

                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="endereco"><g:message code="cliente.endereco.label" default="Endereco"/></label>
                    </td>
                    <td valign="top" class="value ${hasErrors(bean: clienteInstance, field: 'endereco', 'errors')}">
                        <g:textField name="endereco" value="${clienteInstance?.endereco}"/>
                    </td>
                </tr>

                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="nome"><g:message code="cliente.nome.label" default="Nome"/></label>
                    </td>
                    <td valign="top" class="value ${hasErrors(bean: clienteInstance, field: 'nome', 'errors')}">
                        <g:textField name="nome" value="${clienteInstance?.nome}"/>
                    </td>
                </tr>

                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="telefone"><g:message code="cliente.telefone.label" default="Telefone"/></label>
                    </td>
                    <td valign="top" class="value ${hasErrors(bean: clienteInstance, field: 'telefone', 'errors')}">
                        <g:textField name="telefone" value="${fieldValue(bean: clienteInstance, field: 'telefone')}"/>
                    </td>
                </tr>

                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="valor"><g:message code="cliente.valor.label" default="Valor"/></label>
                    </td>
                    <td valign="top" class="value ${hasErrors(bean: clienteInstance, field: 'valor', 'errors')}">
                        <g:textField name="valor" value="${fieldValue(bean: clienteInstance, field: 'valor')}"/>
                    </td>
                </tr>

                </tbody>
            </table>
        </div>

        <div class="buttons">
            <span class="button"><g:submitButton name="create" class="save"
                                                 value="${message(code: 'default.button.create.label', default: 'Create')}"/></span>
        </div>
    </g:form>
</div>
</body>
</html>
