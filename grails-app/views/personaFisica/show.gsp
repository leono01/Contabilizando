
<%@ page import="com.contabilizando.PersonaFisica" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personaFisica.label', default: 'PersonaFisica')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-personaFisica" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-personaFisica" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list personaFisica">
			
				<g:if test="${personaFisicaInstance?.rfc}">
				<li class="fieldcontain">
					<span id="rfc-label" class="property-label"><g:message code="personaFisica.rfc.label" default="Rfc" /></span>
					
						<span class="property-value" aria-labelledby="rfc-label"><g:fieldValue bean="${personaFisicaInstance}" field="rfc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaFisicaInstance?.calleFiscal}">
				<li class="fieldcontain">
					<span id="calleFiscal-label" class="property-label"><g:message code="personaFisica.calleFiscal.label" default="Calle Fiscal" /></span>
					
						<span class="property-value" aria-labelledby="calleFiscal-label"><g:fieldValue bean="${personaFisicaInstance}" field="calleFiscal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaFisicaInstance?.numeroExteriorFiscal}">
				<li class="fieldcontain">
					<span id="numeroExteriorFiscal-label" class="property-label"><g:message code="personaFisica.numeroExteriorFiscal.label" default="Numero Exterior Fiscal" /></span>
					
						<span class="property-value" aria-labelledby="numeroExteriorFiscal-label"><g:fieldValue bean="${personaFisicaInstance}" field="numeroExteriorFiscal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaFisicaInstance?.numeroInteriorFiscal}">
				<li class="fieldcontain">
					<span id="numeroInteriorFiscal-label" class="property-label"><g:message code="personaFisica.numeroInteriorFiscal.label" default="Numero Interior Fiscal" /></span>
					
						<span class="property-value" aria-labelledby="numeroInteriorFiscal-label"><g:fieldValue bean="${personaFisicaInstance}" field="numeroInteriorFiscal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaFisicaInstance?.coloniaFiscal}">
				<li class="fieldcontain">
					<span id="coloniaFiscal-label" class="property-label"><g:message code="personaFisica.coloniaFiscal.label" default="Colonia Fiscal" /></span>
					
						<span class="property-value" aria-labelledby="coloniaFiscal-label"><g:fieldValue bean="${personaFisicaInstance}" field="coloniaFiscal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaFisicaInstance?.localidadFiscal}">
				<li class="fieldcontain">
					<span id="localidadFiscal-label" class="property-label"><g:message code="personaFisica.localidadFiscal.label" default="Localidad Fiscal" /></span>
					
						<span class="property-value" aria-labelledby="localidadFiscal-label"><g:fieldValue bean="${personaFisicaInstance}" field="localidadFiscal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaFisicaInstance?.delegacionOMunicipioFiscal}">
				<li class="fieldcontain">
					<span id="delegacionOMunicipioFiscal-label" class="property-label"><g:message code="personaFisica.delegacionOMunicipioFiscal.label" default="Delegacion OM unicipio Fiscal" /></span>
					
						<span class="property-value" aria-labelledby="delegacionOMunicipioFiscal-label"><g:link controller="municipio" action="show" id="${personaFisicaInstance?.delegacionOMunicipioFiscal?.id}">${personaFisicaInstance?.delegacionOMunicipioFiscal?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaFisicaInstance?.estadoFiscal}">
				<li class="fieldcontain">
					<span id="estadoFiscal-label" class="property-label"><g:message code="personaFisica.estadoFiscal.label" default="Estado Fiscal" /></span>
					
						<span class="property-value" aria-labelledby="estadoFiscal-label"><g:link controller="estado" action="show" id="${personaFisicaInstance?.estadoFiscal?.id}">${personaFisicaInstance?.estadoFiscal?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaFisicaInstance?.paisFiscal}">
				<li class="fieldcontain">
					<span id="paisFiscal-label" class="property-label"><g:message code="personaFisica.paisFiscal.label" default="Pais Fiscal" /></span>
					
						<span class="property-value" aria-labelledby="paisFiscal-label"><g:link controller="pais" action="show" id="${personaFisicaInstance?.paisFiscal?.id}">${personaFisicaInstance?.paisFiscal?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaFisicaInstance?.codigoPostalFiscal}">
				<li class="fieldcontain">
					<span id="codigoPostalFiscal-label" class="property-label"><g:message code="personaFisica.codigoPostalFiscal.label" default="Codigo Postal Fiscal" /></span>
					
						<span class="property-value" aria-labelledby="codigoPostalFiscal-label"><g:fieldValue bean="${personaFisicaInstance}" field="codigoPostalFiscal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaFisicaInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="personaFisica.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${personaFisicaInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaFisicaInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="personaFisica.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${personaFisicaInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaFisicaInstance?.regimenFiscal}">
				<li class="fieldcontain">
					<span id="regimenFiscal-label" class="property-label"><g:message code="personaFisica.regimenFiscal.label" default="Regimen Fiscal" /></span>
					
						<span class="property-value" aria-labelledby="regimenFiscal-label"><g:fieldValue bean="${personaFisicaInstance}" field="regimenFiscal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaFisicaInstance?.nombres}">
				<li class="fieldcontain">
					<span id="nombres-label" class="property-label"><g:message code="personaFisica.nombres.label" default="Nombres" /></span>
					
						<span class="property-value" aria-labelledby="nombres-label"><g:fieldValue bean="${personaFisicaInstance}" field="nombres"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaFisicaInstance?.apellidoPaterno}">
				<li class="fieldcontain">
					<span id="apellidoPaterno-label" class="property-label"><g:message code="personaFisica.apellidoPaterno.label" default="Apellido Paterno" /></span>
					
						<span class="property-value" aria-labelledby="apellidoPaterno-label"><g:fieldValue bean="${personaFisicaInstance}" field="apellidoPaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaFisicaInstance?.apellidoMaterno}">
				<li class="fieldcontain">
					<span id="apellidoMaterno-label" class="property-label"><g:message code="personaFisica.apellidoMaterno.label" default="Apellido Materno" /></span>
					
						<span class="property-value" aria-labelledby="apellidoMaterno-label"><g:fieldValue bean="${personaFisicaInstance}" field="apellidoMaterno"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:personaFisicaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${personaFisicaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
