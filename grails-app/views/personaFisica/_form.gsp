<%@ page import="com.contabilizando.PersonaFisica" %>



<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'rfc', 'error')} required">
	<label for="rfc">
		<g:message code="personaFisica.rfc.label" default="Rfc" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="rfc" maxlength="13" required="" value="${personaFisicaInstance?.rfc}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'calleFiscal', 'error')} ">
	<label for="calleFiscal">
		<g:message code="personaFisica.calleFiscal.label" default="Calle Fiscal" />
		
	</label>
	<g:textField name="calleFiscal" value="${personaFisicaInstance?.calleFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'numeroExteriorFiscal', 'error')} ">
	<label for="numeroExteriorFiscal">
		<g:message code="personaFisica.numeroExteriorFiscal.label" default="Numero Exterior Fiscal" />
		
	</label>
	<g:textField name="numeroExteriorFiscal" value="${personaFisicaInstance?.numeroExteriorFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'numeroInteriorFiscal', 'error')} ">
	<label for="numeroInteriorFiscal">
		<g:message code="personaFisica.numeroInteriorFiscal.label" default="Numero Interior Fiscal" />
		
	</label>
	<g:textField name="numeroInteriorFiscal" value="${personaFisicaInstance?.numeroInteriorFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'coloniaFiscal', 'error')} ">
	<label for="coloniaFiscal">
		<g:message code="personaFisica.coloniaFiscal.label" default="Colonia Fiscal" />
		
	</label>
	<g:textField name="coloniaFiscal" value="${personaFisicaInstance?.coloniaFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'localidadFiscal', 'error')} ">
	<label for="localidadFiscal">
		<g:message code="personaFisica.localidadFiscal.label" default="Localidad Fiscal" />
		
	</label>
	<g:textField name="localidadFiscal" value="${personaFisicaInstance?.localidadFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'delegacionOMunicipioFiscal', 'error')} ">
	<label for="delegacionOMunicipioFiscal">
		<g:message code="personaFisica.delegacionOMunicipioFiscal.label" default="Delegacion OM unicipio Fiscal" />
		
	</label>
	<g:select id="delegacionOMunicipioFiscal" name="delegacionOMunicipioFiscal.id" from="${com.contabilizando.catalogos.Municipio.list()}" optionKey="id" value="${personaFisicaInstance?.delegacionOMunicipioFiscal?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'estadoFiscal', 'error')} ">
	<label for="estadoFiscal">
		<g:message code="personaFisica.estadoFiscal.label" default="Estado Fiscal" />
		
	</label>
	<g:select id="estadoFiscal" name="estadoFiscal.id" from="${com.contabilizando.catalogos.Estado.list()}" optionKey="id" value="${personaFisicaInstance?.estadoFiscal?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'paisFiscal', 'error')} ">
	<label for="paisFiscal">
		<g:message code="personaFisica.paisFiscal.label" default="Pais Fiscal" />
		
	</label>
	<g:select id="paisFiscal" name="paisFiscal.id" from="${com.contabilizando.catalogos.Pais.list()}" optionKey="id" value="${personaFisicaInstance?.paisFiscal?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'codigoPostalFiscal', 'error')} ">
	<label for="codigoPostalFiscal">
		<g:message code="personaFisica.codigoPostalFiscal.label" default="Codigo Postal Fiscal" />
		
	</label>
	<g:textField name="codigoPostalFiscal" value="${personaFisicaInstance?.codigoPostalFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="personaFisica.telefono.label" default="Telefono" />
		
	</label>
	<g:textField name="telefono" value="${personaFisicaInstance?.telefono}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="personaFisica.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${personaFisicaInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'regimenFiscal', 'error')} ">
	<label for="regimenFiscal">
		<g:message code="personaFisica.regimenFiscal.label" default="Regimen Fiscal" />
		
	</label>
	<g:textField name="regimenFiscal" value="${personaFisicaInstance?.regimenFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'nombres', 'error')} ">
	<label for="nombres">
		<g:message code="personaFisica.nombres.label" default="Nombres" />
		
	</label>
	<g:textField name="nombres" value="${personaFisicaInstance?.nombres}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'apellidoPaterno', 'error')} ">
	<label for="apellidoPaterno">
		<g:message code="personaFisica.apellidoPaterno.label" default="Apellido Paterno" />
		
	</label>
	<g:textField name="apellidoPaterno" value="${personaFisicaInstance?.apellidoPaterno}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaFisicaInstance, field: 'apellidoMaterno', 'error')} ">
	<label for="apellidoMaterno">
		<g:message code="personaFisica.apellidoMaterno.label" default="Apellido Materno" />
		
	</label>
	<g:textField name="apellidoMaterno" value="${personaFisicaInstance?.apellidoMaterno}"/>

</div>

