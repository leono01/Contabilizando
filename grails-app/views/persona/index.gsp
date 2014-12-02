
<%@ page import="com.contabilizando.Persona" %>
<%@ page import="com.contabilizando.PersonaMoral" %>
<%@ page import="com.contabilizando.PersonaFisica" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
    <g:set var="entityName1" value="${message(code: 'personaFisica.label', default: 'Persona Física')}" />
    <g:set var="entityName2" value="${message(code: 'personaMoral.label', default: 'Persona Moral')}" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Proveedores</title>
  </head>
  <body>
    <div id="content-header">
      <h1>Proveedores</h1>
    </div>
    
    <div id="list-personaFisica" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName1]" /></h1>
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
    <div class="btn-group">
        <%--<a class="btn btn-small tip-bottom" href="#crearPersonaFlowModal" data-toggle="modal">
          <i class="icon-user"></i> Agregar Contribuyente
        </a>--%>
        <g:link class="btn btn-large btn-primary" controller="personaFisica" action="create">
            <i class="icon-user"></i>Agregar proveedor
        </g:link>
      </div>
    
    </br>
    
    <div id="list-personaMoral" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName2]" /></h1>
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
                
    <div class="btn-group">
        <%--<a class="btn btn-small tip-bottom" href="#crearPersonaFlowModal" data-toggle="modal">
          <i class="icon-user"></i> Agregar Contribuyente
        </a>--%>
        <g:link class="btn btn-large btn-primary" controller="personaMoral" action="create">
            <i class="icon-user"></i>Agregar proveedor
        </g:link>
      </div>
    
    <%--<div class="well" style="text-align: center">
        <g:link class="btn btn-large btn-primary" controller="personaFisica">Persona Física</g:link>
        <g:link class="btn btn-large btn-primary" controller="personaMoral">Persona Moral</g:link>
    </div>--%>
  </body>
</html>