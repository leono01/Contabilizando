
<%@ page import="com.contabilizando.Persona" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-persona" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-persona" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list persona">
			
				<g:if test="${personaInstance?.rfc}">
				<li class="fieldcontain">
					<span id="rfc-label" class="property-label"><g:message code="persona.rfc.label" default="Rfc" /></span>
					
						<span class="property-value" aria-labelledby="rfc-label"><g:fieldValue bean="${personaInstance}" field="rfc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.calleFiscal}">
				<li class="fieldcontain">
					<span id="calleFiscal-label" class="property-label"><g:message code="persona.calleFiscal.label" default="Calle Fiscal" /></span>
					
						<span class="property-value" aria-labelledby="calleFiscal-label"><g:fieldValue bean="${personaInstance}" field="calleFiscal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.numeroExteriorFiscal}">
				<li class="fieldcontain">
					<span id="numeroExteriorFiscal-label" class="property-label"><g:message code="persona.numeroExteriorFiscal.label" default="Numero Exterior Fiscal" /></span>
					
						<span class="property-value" aria-labelledby="numeroExteriorFiscal-label"><g:fieldValue bean="${personaInstance}" field="numeroExteriorFiscal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.numeroInteriorFiscal}">
				<li class="fieldcontain">
					<span id="numeroInteriorFiscal-label" class="property-label"><g:message code="persona.numeroInteriorFiscal.label" default="Numero Interior Fiscal" /></span>
					
						<span class="property-value" aria-labelledby="numeroInteriorFiscal-label"><g:fieldValue bean="${personaInstance}" field="numeroInteriorFiscal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.coloniaFiscal}">
				<li class="fieldcontain">
					<span id="coloniaFiscal-label" class="property-label"><g:message code="persona.coloniaFiscal.label" default="Colonia Fiscal" /></span>
					
						<span class="property-value" aria-labelledby="coloniaFiscal-label"><g:fieldValue bean="${personaInstance}" field="coloniaFiscal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.delegacionOMunicipioFiscal}">
				<li class="fieldcontain">
					<span id="delegacionOMunicipioFiscal-label" class="property-label"><g:message code="persona.delegacionOMunicipioFiscal.label" default="Delegacion OM unicipio Fiscal" /></span>
					
						<span class="property-value" aria-labelledby="delegacionOMunicipioFiscal-label"><g:fieldValue bean="${personaInstance}" field="delegacionOMunicipioFiscal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.codigoPostalFiscal}">
				<li class="fieldcontain">
					<span id="codigoPostalFiscal-label" class="property-label"><g:message code="persona.codigoPostalFiscal.label" default="Codigo Postal Fiscal" /></span>
					
						<span class="property-value" aria-labelledby="codigoPostalFiscal-label"><g:fieldValue bean="${personaInstance}" field="codigoPostalFiscal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="persona.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${personaInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="persona.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${personaInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:personaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${personaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
