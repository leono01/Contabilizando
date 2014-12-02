<%@ page import="com.contabilizando.Movimiento" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <title>Gastos</title>
    </head>
    <body>
        <ul class="nav nav-pills">
            <li class="active">
                <g:link controller="contabilidad" action="listarIngresos">Ingresos</g:link>
            </li>
            <li class="active">
                <g:link controller="contabilidad" action="listarGastos">Gastos</g:link>
            </li>
        </ul>              
        
        <div>
            <g:link class="btn btn-success" controller="movimiento" action="agregarGasto">Agregar Gasto</g:link>
        </div>
        
        <div id="list-gastos" class="content scaffold-list" role="main">
			<h1>Gastos</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
                            <tr>
					
                                <g:sortableColumn property="fechaDeCertificacion" title="Fecha" />					
                                <g:sortableColumn property="receptor" title="Cliente" />					
                                <!--<g:sortableColumn property="conceptos" title="Concepto" />-->		
                                <g:sortableColumn property="folio" title="Folio" />					
				<g:sortableColumn property="total" title="Honorarios" />					
                                <!--<g:sortableColumn property="iva" title="IVA" />-->
                                <!--<g:sortableColumn property="ivaRetenido" title="IVA Retenido" />-->
                                <!--<g:sortableColumn property="isrRetenido" title="ISR Retenido" />-->
                                <!--<g:sortableColumn property="subtotal" title="Total recibido" />-->
					
                            </tr>
				</thead>
				<tbody>
				<g:each in="${todosLosGastos}" status="i" var="gasto">
                                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">					
                                        <!--<td><g:link action="show" id="${gasto.id}">${fieldValue(bean: movimientoInstance, field: "serie")}</g:link></td>-->
					<td><g:formatDate date="${gasto.fechaDeCertificacion}"/></td>                                        
					<td>${gasto.receptor.rfc}</td>
                                        <!--<td>${fieldValue(bean: gasto, field: "conceptos")}</td>-->
					<td>${fieldValue(bean: gasto, field: "folio")}</td>					
					<td>${fieldValue(bean: gasto, field: "total")}</td>					
					<!--<td>${fieldValue(bean: gasto, field: "metodoDePago")}</td>-->
                                    </tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${movimientoInstanceCount ?: 0}" />
			</div>
		</div>
        
    </body>
</html>
