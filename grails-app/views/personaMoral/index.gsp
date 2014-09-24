
<%@ page import="com.contabilizando.PersonaMoral" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personaMoral.label', default: 'PersonaMoral')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-personaMoral" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-personaMoral" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="rfc" title="${message(code: 'personaMoral.rfc.label', default: 'Rfc')}" />
					
						<g:sortableColumn property="calleFiscal" title="${message(code: 'personaMoral.calleFiscal.label', default: 'Calle Fiscal')}" />
					
						<g:sortableColumn property="numeroExteriorFiscal" title="${message(code: 'personaMoral.numeroExteriorFiscal.label', default: 'Numero Exterior Fiscal')}" />
					
						<g:sortableColumn property="numeroInteriorFiscal" title="${message(code: 'personaMoral.numeroInteriorFiscal.label', default: 'Numero Interior Fiscal')}" />
					
						<g:sortableColumn property="coloniaFiscal" title="${message(code: 'personaMoral.coloniaFiscal.label', default: 'Colonia Fiscal')}" />
					
						<g:sortableColumn property="localidadFiscal" title="${message(code: 'personaMoral.localidadFiscal.label', default: 'Localidad Fiscal')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${personaMoralInstanceList}" status="i" var="personaMoralInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${personaMoralInstance.id}">${fieldValue(bean: personaMoralInstance, field: "rfc")}</g:link></td>
					
						<td>${fieldValue(bean: personaMoralInstance, field: "calleFiscal")}</td>
					
						<td>${fieldValue(bean: personaMoralInstance, field: "numeroExteriorFiscal")}</td>
					
						<td>${fieldValue(bean: personaMoralInstance, field: "numeroInteriorFiscal")}</td>
					
						<td>${fieldValue(bean: personaMoralInstance, field: "coloniaFiscal")}</td>
					
						<td>${fieldValue(bean: personaMoralInstance, field: "localidadFiscal")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${personaMoralInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
