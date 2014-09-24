
<%@ page import="com.contabilizando.Movimiento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'movimiento.label', default: 'Movimiento')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-movimiento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-movimiento" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="serie" title="${message(code: 'movimiento.serie.label', default: 'Serie')}" />
					
						<g:sortableColumn property="folio" title="${message(code: 'movimiento.folio.label', default: 'Folio')}" />
					
						<g:sortableColumn property="fechaDeCertificacion" title="${message(code: 'movimiento.fechaDeCertificacion.label', default: 'Fecha De Certificacion')}" />
					
						<g:sortableColumn property="lugarDeExpedicion" title="${message(code: 'movimiento.lugarDeExpedicion.label', default: 'Lugar De Expedicion')}" />
					
						<g:sortableColumn property="formaDePago" title="${message(code: 'movimiento.formaDePago.label', default: 'Forma De Pago')}" />
					
						<g:sortableColumn property="metodoDePago" title="${message(code: 'movimiento.metodoDePago.label', default: 'Metodo De Pago')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${movimientoInstanceList}" status="i" var="movimientoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${movimientoInstance.id}">${fieldValue(bean: movimientoInstance, field: "serie")}</g:link></td>
					
						<td>${fieldValue(bean: movimientoInstance, field: "folio")}</td>
					
						<td><g:formatDate date="${movimientoInstance.fechaDeCertificacion}" /></td>
					
						<td>${fieldValue(bean: movimientoInstance, field: "lugarDeExpedicion")}</td>
					
						<td>${fieldValue(bean: movimientoInstance, field: "formaDePago")}</td>
					
						<td>${fieldValue(bean: movimientoInstance, field: "metodoDePago")}</td>
					
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
