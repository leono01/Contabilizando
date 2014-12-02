<%@ page import="com.contabilizando.Movimiento" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <title>Agregar Gasto</title>
    </head>
    <body>
        <g:form name="agregarGasto" controller="movimiento" action="almacenarGasto">
            <g:hiddenField name="unGasto" value="${unGasto?.id}" />
            <g:render template="gasto"/>
            <g:submitButton class="btn btn-success" name="almacenarGasto" value="Guardar"/>
            <g:submitButton class="btn btn-danger" name="cancelar" value="Cancelar"/>
        </g:form>
    </body>
</html>
