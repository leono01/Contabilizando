
<%@ page import="com.contabilizando.Impuesto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'impuesto.label', default: 'Impuesto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-impuesto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-impuesto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list impuesto">
			
				<g:if test="${impuestoInstance?.nombreDelImpuesto}">
				<li class="fieldcontain">
					<span id="nombreDelImpuesto-label" class="property-label"><g:message code="impuesto.nombreDelImpuesto.label" default="Nombre Del Impuesto" /></span>
					
						<span class="property-value" aria-labelledby="nombreDelImpuesto-label"><g:fieldValue bean="${impuestoInstance}" field="nombreDelImpuesto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${impuestoInstance?.tasa}">
				<li class="fieldcontain">
					<span id="tasa-label" class="property-label"><g:message code="impuesto.tasa.label" default="Tasa" /></span>
					
						<span class="property-value" aria-labelledby="tasa-label"><g:fieldValue bean="${impuestoInstance}" field="tasa"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${impuestoInstance?.importe}">
				<li class="fieldcontain">
					<span id="importe-label" class="property-label"><g:message code="impuesto.importe.label" default="Importe" /></span>
					
						<span class="property-value" aria-labelledby="importe-label"><g:fieldValue bean="${impuestoInstance}" field="importe"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${impuestoInstance?.movimiento}">
				<li class="fieldcontain">
					<span id="movimiento-label" class="property-label"><g:message code="impuesto.movimiento.label" default="Movimiento" /></span>
					
						<span class="property-value" aria-labelledby="movimiento-label"><g:link controller="movimiento" action="show" id="${impuestoInstance?.movimiento?.id}">${impuestoInstance?.movimiento?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:impuestoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${impuestoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
