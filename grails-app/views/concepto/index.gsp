
<%@ page import="com.contabilizando.Concepto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'concepto.label', default: 'Concepto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-concepto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-concepto" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="cantidad" title="${message(code: 'concepto.cantidad.label', default: 'Cantidad')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'concepto.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="numeroDeIdentificacion" title="${message(code: 'concepto.numeroDeIdentificacion.label', default: 'Numero De Identificacion')}" />
					
						<g:sortableColumn property="unidad" title="${message(code: 'concepto.unidad.label', default: 'Unidad')}" />
					
						<g:sortableColumn property="valorUnitario" title="${message(code: 'concepto.valorUnitario.label', default: 'Valor Unitario')}" />
					
						<g:sortableColumn property="importe" title="${message(code: 'concepto.importe.label', default: 'Importe')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${conceptoInstanceList}" status="i" var="conceptoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${conceptoInstance.id}">${fieldValue(bean: conceptoInstance, field: "cantidad")}</g:link></td>
					
						<td>${fieldValue(bean: conceptoInstance, field: "descripcion")}</td>
					
						<td>${fieldValue(bean: conceptoInstance, field: "numeroDeIdentificacion")}</td>
					
						<td>${fieldValue(bean: conceptoInstance, field: "unidad")}</td>
					
						<td>${fieldValue(bean: conceptoInstance, field: "valorUnitario")}</td>
					
						<td>${fieldValue(bean: conceptoInstance, field: "importe")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${conceptoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
