
<%@ page import="com.contabilizando.PersonaFisica" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personaFisica.label', default: 'PersonaFisica')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-personaFisica" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-personaFisica" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="rfc" title="${message(code: 'personaFisica.rfc.label', default: 'Rfc')}" />
					
						<g:sortableColumn property="calleFiscal" title="${message(code: 'personaFisica.calleFiscal.label', default: 'Calle Fiscal')}" />
					
						<g:sortableColumn property="numeroExteriorFiscal" title="${message(code: 'personaFisica.numeroExteriorFiscal.label', default: 'Numero Exterior Fiscal')}" />
					
						<g:sortableColumn property="numeroInteriorFiscal" title="${message(code: 'personaFisica.numeroInteriorFiscal.label', default: 'Numero Interior Fiscal')}" />
					
						<g:sortableColumn property="coloniaFiscal" title="${message(code: 'personaFisica.coloniaFiscal.label', default: 'Colonia Fiscal')}" />
					
						<g:sortableColumn property="localidadFiscal" title="${message(code: 'personaFisica.localidadFiscal.label', default: 'Localidad Fiscal')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${personaFisicaInstanceList}" status="i" var="personaFisicaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${personaFisicaInstance.id}">${fieldValue(bean: personaFisicaInstance, field: "rfc")}</g:link></td>
					
						<td>${fieldValue(bean: personaFisicaInstance, field: "calleFiscal")}</td>
					
						<td>${fieldValue(bean: personaFisicaInstance, field: "numeroExteriorFiscal")}</td>
					
						<td>${fieldValue(bean: personaFisicaInstance, field: "numeroInteriorFiscal")}</td>
					
						<td>${fieldValue(bean: personaFisicaInstance, field: "coloniaFiscal")}</td>
					
						<td>${fieldValue(bean: personaFisicaInstance, field: "localidadFiscal")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${personaFisicaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
