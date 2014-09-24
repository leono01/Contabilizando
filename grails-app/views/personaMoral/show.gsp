
<%@ page import="com.contabilizando.PersonaMoral" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personaMoral.label', default: 'PersonaMoral')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-personaMoral" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-personaMoral" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list personaMoral">
			
				<g:if test="${personaMoralInstance?.rfc}">
				<li class="fieldcontain">
					<span id="rfc-label" class="property-label"><g:message code="personaMoral.rfc.label" default="Rfc" /></span>
					
						<span class="property-value" aria-labelledby="rfc-label"><g:fieldValue bean="${personaMoralInstance}" field="rfc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaMoralInstance?.calleFiscal}">
				<li class="fieldcontain">
					<span id="calleFiscal-label" class="property-label"><g:message code="personaMoral.calleFiscal.label" default="Calle Fiscal" /></span>
					
						<span class="property-value" aria-labelledby="calleFiscal-label"><g:fieldValue bean="${personaMoralInstance}" field="calleFiscal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaMoralInstance?.numeroExteriorFiscal}">
				<li class="fieldcontain">
					<span id="numeroExteriorFiscal-label" class="property-label"><g:message code="personaMoral.numeroExteriorFiscal.label" default="Numero Exterior Fiscal" /></span>
					
						<span class="property-value" aria-labelledby="numeroExteriorFiscal-label"><g:fieldValue bean="${personaMoralInstance}" field="numeroExteriorFiscal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaMoralInstance?.numeroInteriorFiscal}">
				<li class="fieldcontain">
					<span id="numeroInteriorFiscal-label" class="property-label"><g:message code="personaMoral.numeroInteriorFiscal.label" default="Numero Interior Fiscal" /></span>
					
						<span class="property-value" aria-labelledby="numeroInteriorFiscal-label"><g:fieldValue bean="${personaMoralInstance}" field="numeroInteriorFiscal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaMoralInstance?.coloniaFiscal}">
				<li class="fieldcontain">
					<span id="coloniaFiscal-label" class="property-label"><g:message code="personaMoral.coloniaFiscal.label" default="Colonia Fiscal" /></span>
					
						<span class="property-value" aria-labelledby="coloniaFiscal-label"><g:fieldValue bean="${personaMoralInstance}" field="coloniaFiscal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaMoralInstance?.localidadFiscal}">
				<li class="fieldcontain">
					<span id="localidadFiscal-label" class="property-label"><g:message code="personaMoral.localidadFiscal.label" default="Localidad Fiscal" /></span>
					
						<span class="property-value" aria-labelledby="localidadFiscal-label"><g:fieldValue bean="${personaMoralInstance}" field="localidadFiscal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaMoralInstance?.delegacionOMunicipioFiscal}">
				<li class="fieldcontain">
					<span id="delegacionOMunicipioFiscal-label" class="property-label"><g:message code="personaMoral.delegacionOMunicipioFiscal.label" default="Delegacion OM unicipio Fiscal" /></span>
					
						<span class="property-value" aria-labelledby="delegacionOMunicipioFiscal-label"><g:link controller="municipio" action="show" id="${personaMoralInstance?.delegacionOMunicipioFiscal?.id}">${personaMoralInstance?.delegacionOMunicipioFiscal?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaMoralInstance?.estadoFiscal}">
				<li class="fieldcontain">
					<span id="estadoFiscal-label" class="property-label"><g:message code="personaMoral.estadoFiscal.label" default="Estado Fiscal" /></span>
					
						<span class="property-value" aria-labelledby="estadoFiscal-label"><g:link controller="estado" action="show" id="${personaMoralInstance?.estadoFiscal?.id}">${personaMoralInstance?.estadoFiscal?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaMoralInstance?.paisFiscal}">
				<li class="fieldcontain">
					<span id="paisFiscal-label" class="property-label"><g:message code="personaMoral.paisFiscal.label" default="Pais Fiscal" /></span>
					
						<span class="property-value" aria-labelledby="paisFiscal-label"><g:link controller="pais" action="show" id="${personaMoralInstance?.paisFiscal?.id}">${personaMoralInstance?.paisFiscal?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaMoralInstance?.codigoPostalFiscal}">
				<li class="fieldcontain">
					<span id="codigoPostalFiscal-label" class="property-label"><g:message code="personaMoral.codigoPostalFiscal.label" default="Codigo Postal Fiscal" /></span>
					
						<span class="property-value" aria-labelledby="codigoPostalFiscal-label"><g:fieldValue bean="${personaMoralInstance}" field="codigoPostalFiscal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaMoralInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="personaMoral.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${personaMoralInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaMoralInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="personaMoral.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${personaMoralInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaMoralInstance?.regimenFiscal}">
				<li class="fieldcontain">
					<span id="regimenFiscal-label" class="property-label"><g:message code="personaMoral.regimenFiscal.label" default="Regimen Fiscal" /></span>
					
						<span class="property-value" aria-labelledby="regimenFiscal-label"><g:fieldValue bean="${personaMoralInstance}" field="regimenFiscal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaMoralInstance?.denominacionSocial}">
				<li class="fieldcontain">
					<span id="denominacionSocial-label" class="property-label"><g:message code="personaMoral.denominacionSocial.label" default="Denominacion Social" /></span>
					
						<span class="property-value" aria-labelledby="denominacionSocial-label"><g:fieldValue bean="${personaMoralInstance}" field="denominacionSocial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaMoralInstance?.nombreComercial}">
				<li class="fieldcontain">
					<span id="nombreComercial-label" class="property-label"><g:message code="personaMoral.nombreComercial.label" default="Nombre Comercial" /></span>
					
						<span class="property-value" aria-labelledby="nombreComercial-label"><g:fieldValue bean="${personaMoralInstance}" field="nombreComercial"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:personaMoralInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${personaMoralInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
