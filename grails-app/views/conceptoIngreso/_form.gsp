<%@ page import="com.contabilizando.catalogos.ConceptoIngreso" %>



<div class="fieldcontain ${hasErrors(bean: conceptoIngresoInstance, field: 'nombreConceptoIngreso', 'error')} required">
	<label for="nombreConceptoIngreso">
		<g:message code="conceptoIngreso.nombreConceptoIngreso.label" default="Nombre Concepto Ingreso" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreConceptoIngreso" required="" value="${conceptoIngresoInstance?.nombreConceptoIngreso}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conceptoIngresoInstance, field: 'descripcionConceptoIngreso', 'error')} required">
	<label for="descripcionConceptoIngreso">
		<g:message code="conceptoIngreso.descripcionConceptoIngreso.label" default="Descripcion Concepto Ingreso" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcionConceptoIngreso" required="" value="${conceptoIngresoInstance?.descripcionConceptoIngreso}"/>

</div>

