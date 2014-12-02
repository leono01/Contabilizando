<%@ page import="com.contabilizando.catalogos.RegimenFiscal" %>



<div class="fieldcontain ${hasErrors(bean: regimenFiscalInstance, field: 'nombreRegimenFiscal', 'error')} required">
	<label for="nombreRegimenFiscal">
		<g:message code="regimenFiscal.nombreRegimenFiscal.label" default="Nombre Regimen Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreRegimenFiscal" required="" value="${regimenFiscalInstance?.nombreRegimenFiscal}"/>

</div>

