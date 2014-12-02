<%@ page import="com.contabilizando.PersonaMoral" %>



<div class="fieldcontain ${hasErrors(bean: personaMoralInstance, field: 'rfc', 'error')} required">
	<label for="rfc">
		<g:message code="personaMoral.rfc.label" default="Rfc" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="rfc" maxlength="13" required="" value="${personaMoralInstance?.rfc}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaMoralInstance, field: 'calleFiscal', 'error')} ">
	<label for="calleFiscal">
		<g:message code="personaMoral.calleFiscal.label" default="Calle Fiscal" />
		
	</label>
	<g:textField name="calleFiscal" value="${personaMoralInstance?.calleFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaMoralInstance, field: 'numeroExteriorFiscal', 'error')} ">
	<label for="numeroExteriorFiscal">
		<g:message code="personaMoral.numeroExteriorFiscal.label" default="Numero Exterior Fiscal" />
		
	</label>
	<g:textField name="numeroExteriorFiscal" value="${personaMoralInstance?.numeroExteriorFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaMoralInstance, field: 'numeroInteriorFiscal', 'error')} ">
	<label for="numeroInteriorFiscal">
		<g:message code="personaMoral.numeroInteriorFiscal.label" default="Numero Interior Fiscal" />
		
	</label>
	<g:textField name="numeroInteriorFiscal" value="${personaMoralInstance?.numeroInteriorFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaMoralInstance, field: 'coloniaFiscal', 'error')} ">
	<label for="coloniaFiscal">
		<g:message code="personaMoral.coloniaFiscal.label" default="Colonia Fiscal" />
		
	</label>
	<g:textField name="coloniaFiscal" value="${personaMoralInstance?.coloniaFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaMoralInstance, field: 'localidadFiscal', 'error')} ">
	<label for="localidadFiscal">
		<g:message code="personaMoral.localidadFiscal.label" default="Localidad Fiscal" />
		
	</label>
	<g:textField name="localidadFiscal" value="${personaMoralInstance?.localidadFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaMoralInstance, field: 'delegacionOMunicipioFiscal', 'error')} ">
	<label for="delegacionOMunicipioFiscal">
		<g:message code="personaMoral.delegacionOMunicipioFiscal.label" default="Delegacion OM unicipio Fiscal" />
		
	</label>
	<g:select id="delegacionOMunicipioFiscal" name="delegacionOMunicipioFiscal.id" from="${com.contabilizando.catalogos.Municipio.list()}" optionKey="id" value="${personaMoralInstance?.delegacionOMunicipioFiscal?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaMoralInstance, field: 'estadoFiscal', 'error')} ">
	<label for="estadoFiscal">
		<g:message code="personaMoral.estadoFiscal.label" default="Estado Fiscal" />
		
	</label>
	<g:select id="estadoFiscal" name="estadoFiscal.id" from="${com.contabilizando.catalogos.Estado.list()}" optionKey="id" value="${personaMoralInstance?.estadoFiscal?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaMoralInstance, field: 'paisFiscal', 'error')} ">
	<label for="paisFiscal">
		<g:message code="personaMoral.paisFiscal.label" default="Pais Fiscal" />
		
	</label>
	<g:select id="paisFiscal" name="paisFiscal.id" from="${com.contabilizando.catalogos.Pais.list()}" optionKey="id" value="${personaMoralInstance?.paisFiscal?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaMoralInstance, field: 'codigoPostalFiscal', 'error')} ">
	<label for="codigoPostalFiscal">
		<g:message code="personaMoral.codigoPostalFiscal.label" default="Codigo Postal Fiscal" />
		
	</label>
	<g:textField name="codigoPostalFiscal" value="${personaMoralInstance?.codigoPostalFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaMoralInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="personaMoral.telefono.label" default="Telefono" />
		
	</label>
	<g:textField name="telefono" value="${personaMoralInstance?.telefono}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaMoralInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="personaMoral.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${personaMoralInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaMoralInstance, field: 'regimenFiscal', 'error')} ">
	<label for="regimenFiscal">
		<g:message code="personaMoral.regimenFiscal.label" default="Regimen Fiscal" />
		
	</label>
	<%--<g:textField name="regimenFiscal" value="${personaMoralInstance?.regimenFiscal}"/>--%>
        <g:select id="regimenFiscal" name="regimenFiscal.id" from="${com.contabilizando.catalogos.RegimenFiscal.list()}" optionKey="id" value="${regimenFisicalInstance?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaMoralInstance, field: 'denominacionSocial', 'error')} ">
	<label for="denominacionSocial">
		<g:message code="personaMoral.denominacionSocial.label" default="Denominacion Social" />
		
	</label>
	<g:textField name="denominacionSocial" value="${personaMoralInstance?.denominacionSocial}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaMoralInstance, field: 'nombreComercial', 'error')} ">
	<label for="nombreComercial">
		<g:message code="personaMoral.nombreComercial.label" default="Nombre Comercial" />
		
	</label>
	<g:textField name="nombreComercial" value="${personaMoralInstance?.nombreComercial}"/>

</div>

