
<%@ page import="com.app.Persona" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-persona" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-persona" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="rfc" title="${message(code: 'persona.rfc.label', default: 'Rfc')}" />
					
						<g:sortableColumn property="calleFiscal" title="${message(code: 'persona.calleFiscal.label', default: 'Calle Fiscal')}" />
					
						<g:sortableColumn property="numeroExteriorFiscal" title="${message(code: 'persona.numeroExteriorFiscal.label', default: 'Numero Exterior Fiscal')}" />
					
						<g:sortableColumn property="numeroInteriorFiscal" title="${message(code: 'persona.numeroInteriorFiscal.label', default: 'Numero Interior Fiscal')}" />
					
						<g:sortableColumn property="coloniaFiscal" title="${message(code: 'persona.coloniaFiscal.label', default: 'Colonia Fiscal')}" />
					
						<g:sortableColumn property="delegacionOMunicipioFiscal" title="${message(code: 'persona.delegacionOMunicipioFiscal.label', default: 'Delegacion OM unicipio Fiscal')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${personaInstanceList}" status="i" var="personaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${personaInstance.id}">${fieldValue(bean: personaInstance, field: "rfc")}</g:link></td>
					
						<td>${fieldValue(bean: personaInstance, field: "calleFiscal")}</td>
					
						<td>${fieldValue(bean: personaInstance, field: "numeroExteriorFiscal")}</td>
					
						<td>${fieldValue(bean: personaInstance, field: "numeroInteriorFiscal")}</td>
					
						<td>${fieldValue(bean: personaInstance, field: "coloniaFiscal")}</td>
					
						<td>${fieldValue(bean: personaInstance, field: "delegacionOMunicipioFiscal")}</td>
					
					</tr>
				</g:each>
                                
                                <div id="content-header">
      <h1>Un título</h1>
      <div class="btn-group">
        <%--<a class="btn btn-small tip-bottom" href="#crearPersonaFlowModal" data-toggle="modal">
          <i class="icon-user"></i> Agregar Contribuyente
        </a>--%>
        <g:link class="btn btn-large btn-primary" controller="persona" action="create">
            <i class="icon-user"></i>Agregar
        </g:link>
      </div>
    </div>
                                
                                
                              
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${personaInstanceCount ?: 0}" />
			</div>
		</div>
                
                <div id="crearPersonaFlowModal" class="modal hide">
      <div class="modal-header">
        <button data-dismiss="modal" class="close" type="button">×</button>
        <h3>Agregar contribuyente</h3>
      </div>
      <div class="modal-body well" style="text-align: center">
          <%--<g:form class="form-horizontal" controller="persona" action="save">
              Todos los campos
              
              <g:submitButton class="btn btn-primary" name="agregarContribuyente" value="Agregar" />
          </g:form>--%>
        <g:link class="btn btn-large btn-primary" controller="persona" action="create">Agregar</g:link>
      </div>
    </div>
	</body>
</html>
