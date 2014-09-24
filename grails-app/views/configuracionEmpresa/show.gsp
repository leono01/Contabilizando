
<%@ page import="com.contabilizando.catalogos.ConfiguracionEmpresa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'configuracionEmpresa.label', default: 'ConfiguracionEmpresa')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-configuracionEmpresa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-configuracionEmpresa" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list configuracionEmpresa">
			
				<g:if test="${configuracionEmpresaInstance?.nombreDeEmpresa}">
				<li class="fieldcontain">
					<span id="nombreDeEmpresa-label" class="property-label"><g:message code="configuracionEmpresa.nombreDeEmpresa.label" default="Nombre De Empresa" /></span>
					
						<span class="property-value" aria-labelledby="nombreDeEmpresa-label"><g:fieldValue bean="${configuracionEmpresaInstance}" field="nombreDeEmpresa"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${configuracionEmpresaInstance?.nombreDeLogo}">
				<li class="fieldcontain">
					<span id="nombreDeLogo-label" class="property-label"><g:message code="configuracionEmpresa.nombreDeLogo.label" default="Nombre De Logo" /></span>
					
						<span class="property-value" aria-labelledby="nombreDeLogo-label"><g:fieldValue bean="${configuracionEmpresaInstance}" field="nombreDeLogo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${configuracionEmpresaInstance?.logo}">
				<li class="fieldcontain">
					<span id="logo-label" class="property-label"><g:message code="configuracionEmpresa.logo.label" default="Logo" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${configuracionEmpresaInstance?.domicilio}">
				<li class="fieldcontain">
					<span id="domicilio-label" class="property-label"><g:message code="configuracionEmpresa.domicilio.label" default="Domicilio" /></span>
					
						<span class="property-value" aria-labelledby="domicilio-label"><g:fieldValue bean="${configuracionEmpresaInstance}" field="domicilio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${configuracionEmpresaInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="configuracionEmpresa.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${configuracionEmpresaInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${configuracionEmpresaInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="configuracionEmpresa.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:link controller="estado" action="show" id="${configuracionEmpresaInstance?.estado?.id}">${configuracionEmpresaInstance?.estado?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${configuracionEmpresaInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="configuracionEmpresa.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${configuracionEmpresaInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:configuracionEmpresaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${configuracionEmpresaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
