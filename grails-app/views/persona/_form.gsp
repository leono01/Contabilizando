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

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'delegacionOMunicipioFiscal', 'error')} required">
	<label for="delegacionOMunicipioFiscal">
		<g:message code="persona.delegacionOMunicipioFiscal.label" default="Delegacion OM unicipio Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="delegacionOMunicipioFiscal" required="" value="${personaInstance?.delegacionOMunicipioFiscal}"/>

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

