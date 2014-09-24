
<%@ page import="com.contabilizando.Impuesto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'impuesto.label', default: 'Impuesto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-impuesto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-impuesto" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombreDelImpuesto" title="${message(code: 'impuesto.nombreDelImpuesto.label', default: 'Nombre Del Impuesto')}" />
					
						<g:sortableColumn property="tasa" title="${message(code: 'impuesto.tasa.label', default: 'Tasa')}" />
					
						<g:sortableColumn property="importe" title="${message(code: 'impuesto.importe.label', default: 'Importe')}" />
					
						<th><g:message code="impuesto.movimiento.label" default="Movimiento" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${impuestoInstanceList}" status="i" var="impuestoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${impuestoInstance.id}">${fieldValue(bean: impuestoInstance, field: "nombreDelImpuesto")}</g:link></td>
					
						<td>${fieldValue(bean: impuestoInstance, field: "tasa")}</td>
					
						<td>${fieldValue(bean: impuestoInstance, field: "importe")}</td>
					
						<td>${fieldValue(bean: impuestoInstance, field: "movimiento")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${impuestoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
