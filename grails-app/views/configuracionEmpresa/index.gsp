
<%@ page import="com.contabilizando.catalogos.ConfiguracionEmpresa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'configuracionEmpresa.label', default: 'ConfiguracionEmpresa')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-configuracionEmpresa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-configuracionEmpresa" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombreDeEmpresa" title="${message(code: 'configuracionEmpresa.nombreDeEmpresa.label', default: 'Nombre De Empresa')}" />
					
						<g:sortableColumn property="nombreDeLogo" title="${message(code: 'configuracionEmpresa.nombreDeLogo.label', default: 'Nombre De Logo')}" />
					
						<g:sortableColumn property="logo" title="${message(code: 'configuracionEmpresa.logo.label', default: 'Logo')}" />
					
						<g:sortableColumn property="domicilio" title="${message(code: 'configuracionEmpresa.domicilio.label', default: 'Domicilio')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'configuracionEmpresa.email.label', default: 'Email')}" />
					
						<th><g:message code="configuracionEmpresa.estado.label" default="Estado" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${configuracionEmpresaInstanceList}" status="i" var="configuracionEmpresaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${configuracionEmpresaInstance.id}">${fieldValue(bean: configuracionEmpresaInstance, field: "nombreDeEmpresa")}</g:link></td>
					
						<td>${fieldValue(bean: configuracionEmpresaInstance, field: "nombreDeLogo")}</td>
					
						<td>${fieldValue(bean: configuracionEmpresaInstance, field: "logo")}</td>
					
						<td>${fieldValue(bean: configuracionEmpresaInstance, field: "domicilio")}</td>
					
						<td>${fieldValue(bean: configuracionEmpresaInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: configuracionEmpresaInstance, field: "estado")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${configuracionEmpresaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
