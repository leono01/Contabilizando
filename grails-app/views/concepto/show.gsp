
<%@ page import="com.contabilizando.Concepto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'concepto.label', default: 'Concepto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-concepto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-concepto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list concepto">
			
				<g:if test="${conceptoInstance?.cantidad}">
				<li class="fieldcontain">
					<span id="cantidad-label" class="property-label"><g:message code="concepto.cantidad.label" default="Cantidad" /></span>
					
						<span class="property-value" aria-labelledby="cantidad-label"><g:fieldValue bean="${conceptoInstance}" field="cantidad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conceptoInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="concepto.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${conceptoInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conceptoInstance?.numeroDeIdentificacion}">
				<li class="fieldcontain">
					<span id="numeroDeIdentificacion-label" class="property-label"><g:message code="concepto.numeroDeIdentificacion.label" default="Numero De Identificacion" /></span>
					
						<span class="property-value" aria-labelledby="numeroDeIdentificacion-label"><g:fieldValue bean="${conceptoInstance}" field="numeroDeIdentificacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conceptoInstance?.unidad}">
				<li class="fieldcontain">
					<span id="unidad-label" class="property-label"><g:message code="concepto.unidad.label" default="Unidad" /></span>
					
						<span class="property-value" aria-labelledby="unidad-label"><g:fieldValue bean="${conceptoInstance}" field="unidad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conceptoInstance?.valorUnitario}">
				<li class="fieldcontain">
					<span id="valorUnitario-label" class="property-label"><g:message code="concepto.valorUnitario.label" default="Valor Unitario" /></span>
					
						<span class="property-value" aria-labelledby="valorUnitario-label"><g:fieldValue bean="${conceptoInstance}" field="valorUnitario"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conceptoInstance?.importe}">
				<li class="fieldcontain">
					<span id="importe-label" class="property-label"><g:message code="concepto.importe.label" default="Importe" /></span>
					
						<span class="property-value" aria-labelledby="importe-label"><g:fieldValue bean="${conceptoInstance}" field="importe"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conceptoInstance?.movimiento}">
				<li class="fieldcontain">
					<span id="movimiento-label" class="property-label"><g:message code="concepto.movimiento.label" default="Movimiento" /></span>
					
						<span class="property-value" aria-labelledby="movimiento-label"><g:link controller="movimiento" action="show" id="${conceptoInstance?.movimiento?.id}">${conceptoInstance?.movimiento?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:conceptoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${conceptoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
