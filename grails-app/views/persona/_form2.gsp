<%@ page import="com.contabilizando.Persona" %>



<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'rfc', 'error')} required">
	<label for="rfc">
		<g:message code="persona.rfc.label" default="Rfc" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="rfc" maxlength="13" required="" value="${personaInstance?.rfc}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'calleFiscal', 'error')} required">
	<label for="calleFiscal">
		<g:message code="persona.calleFiscal.label" default="Calle Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="calleFiscal" required="" value="${personaInstance?.calleFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'numeroExteriorFiscal', 'error')} required">
	<label for="numeroExteriorFiscal">
		<g:message code="persona.numeroExteriorFiscal.label" default="Numero Exterior Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numeroExteriorFiscal" required="" value="${personaInstance?.numeroExteriorFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'numeroInteriorFiscal', 'error')} required">
	<label for="numeroInteriorFiscal">
		<g:message code="persona.numeroInteriorFiscal.label" default="Numero Interior Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numeroInteriorFiscal" required="" value="${personaInstance?.numeroInteriorFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'coloniaFiscal', 'error')} required">
	<label for="coloniaFiscal">
		<g:message code="persona.coloniaFiscal.label" default="Colonia Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="coloniaFiscal" required="" value="${personaInstance?.coloniaFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'localidadFiscal', 'error')} required">
	<label for="localidadFiscal">
		<g:message code="persona.localidadFiscal.label" default="Localidad Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="localidadFiscal" required="" value="${personaInstance?.localidadFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'paisFiscal', 'error')} required">
	<label for="paisFiscal">
		<g:message code="persona.paisFiscal.label" default="Pais Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:select   id="paisFiscal" 
                    name="paisFiscal.id" 
                    from="${com.app.catalogos.Pais.list()}" 
                    optionKey="id" required="" 
                    value="${personaInstance?.paisFiscal?.id}"                     
                    class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'estadoFiscal', 'error')} required">
	<label for="estadoFiscal">
		<g:message code="persona.estadoFiscal.label" default="Estado Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:select   id="estadoFiscal" 
                    name="estadoFiscal.id" 
                    from="${com.app.catalogos.Estado.list()}" 
                    optionKey="id" required="" 
                    value="${personaInstance?.estadoFiscal?.nombre}"                     
                    onchange="${remoteFunction(
                                                    controller:'municipio',
                                                    action: 'ajaxGetMunicipios',
                                                    onSuccess: 'updateMunicipios(data)',
                                                    onFailure: 'cleanMunicipios()',
                                                    params: '\'id=\' + this.value')}"
                    class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'delegacionOMunicipioFiscal', 'error')} required">
	<label for="delegacionOMunicipioFiscal">
		<g:message code="persona.delegacionOMunicipioFiscal.label" default="Delegacion OM unicipio Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<%--<g:textField name="delegacionOMunicipioFiscal" required="" value="${personaInstance?.delegacionOMunicipioFiscal}"/>--%>
        <g:select   id="delegacionOMunicipioFiscal" 
                    name="delegacionOMunicipioFiscal.id" 
                    from="${com.app.catalogos.Municipio.list()}" 
                    optionKey="id" required="" 
                    value="${personaInstance?.delegacionOMunicipioFiscal?.nombre}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'codigoPostalFiscal', 'error')} required">
	<label for="codigoPostalFiscal">
		<g:message code="persona.codigoPostalFiscal.label" default="Codigo Postal Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="codigoPostalFiscal" required="" value="${personaInstance?.codigoPostalFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="persona.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefono" required="" value="${personaInstance?.telefono}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="persona.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${personaInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'regimenFiscal', 'error')} required">
	<label for="regimenFiscal">
		<g:message code="persona.regimenFiscal.label" default="Régimen Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="regimenFiscal" required="" value="${personaInstance?.regimenFiscal}"/>

</div>