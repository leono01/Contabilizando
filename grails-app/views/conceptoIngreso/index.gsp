
<%@ page import="com.contabilizando.catalogos.ConceptoIngreso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'conceptoIngreso.label', default: 'ConceptoIngreso')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-conceptoIngreso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-conceptoIngreso" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombreConceptoIngreso" title="${message(code: 'conceptoIngreso.nombreConceptoIngreso.label', default: 'Nombre Concepto Ingreso')}" />
					
						<g:sortableColumn property="descripcionConceptoIngreso" title="${message(code: 'conceptoIngreso.descripcionConceptoIngreso.label', default: 'Descripcion Concepto Ingreso')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${conceptoIngresoInstanceList}" status="i" var="conceptoIngresoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${conceptoIngresoInstance.id}">${fieldValue(bean: conceptoIngresoInstance, field: "nombreConceptoIngreso")}</g:link></td>
					
						<td>${fieldValue(bean: conceptoIngresoInstance, field: "descripcionConceptoIngreso")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${conceptoIngresoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
