<%@ page import="com.contabilizando.Movimiento" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <title>Agregar Ingreso</title>
    </head>
    <body>
        <g:form name="agregarIngreso" controller="movimiento" action="almacenarIngreso">
            <g:hiddenField name="unIngreso" value="${unIngreso?.id}" />
            <g:render template="ingreso"/>
            <g:submitButton class="btn btn-success" name="almacenarIngreso" value="Guardar"/>
            <g:submitButton class="btn btn-danger" name="cancelar" value="Cancelar"/>
        </g:form>
    </body>
</html>
