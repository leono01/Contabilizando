
<%@ page import="com.contabilizando.TipoDeOperacion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tipoDeOperacion.label', default: 'TipoDeOperacion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tipoDeOperacion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tipoDeOperacion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tipoDeOperacion">
			
				<g:if test="${tipoDeOperacionInstance?.nombreDeTipoDeOperacion}">
				<li class="fieldcontain">
					<span id="nombreDeTipoDeOperacion-label" class="property-label"><g:message code="tipoDeOperacion.nombreDeTipoDeOperacion.label" default="Nombre De Tipo De Operacion" /></span>
					
						<span class="property-value" aria-labelledby="nombreDeTipoDeOperacion-label"><g:fieldValue bean="${tipoDeOperacionInstance}" field="nombreDeTipoDeOperacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tipoDeOperacionInstance?.categoria}">
				<li class="fieldcontain">
					<span id="categoria-label" class="property-label"><g:message code="tipoDeOperacion.categoria.label" default="Categoria" /></span>
					
						<span class="property-value" aria-labelledby="categoria-label"><g:link controller="categoria" action="show" id="${tipoDeOperacionInstance?.categoria?.id}">${tipoDeOperacionInstance?.categoria?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:tipoDeOperacionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${tipoDeOperacionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
