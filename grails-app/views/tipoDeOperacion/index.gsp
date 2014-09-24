
<%@ page import="com.contabilizando.TipoDeOperacion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tipoDeOperacion.label', default: 'TipoDeOperacion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tipoDeOperacion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tipoDeOperacion" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombreDeTipoDeOperacion" title="${message(code: 'tipoDeOperacion.nombreDeTipoDeOperacion.label', default: 'Nombre De Tipo De Operacion')}" />
					
						<th><g:message code="tipoDeOperacion.categoria.label" default="Categoria" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tipoDeOperacionInstanceList}" status="i" var="tipoDeOperacionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tipoDeOperacionInstance.id}">${fieldValue(bean: tipoDeOperacionInstance, field: "nombreDeTipoDeOperacion")}</g:link></td>
					
						<td>${fieldValue(bean: tipoDeOperacionInstance, field: "categoria")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tipoDeOperacionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
