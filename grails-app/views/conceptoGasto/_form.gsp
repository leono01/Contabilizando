<%@ page import="com.contabilizando.catalogos.ConceptoGasto" %>



<div class="fieldcontain ${hasErrors(bean: conceptoGastoInstance, field: 'nombreConceptoGasto', 'error')} required">
	<label for="nombreConceptoGasto">
		<g:message code="conceptoGasto.nombreConceptoGasto.label" default="Nombre Concepto Gasto" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreConceptoGasto" required="" value="${conceptoGastoInstance?.nombreConceptoGasto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conceptoGastoInstance, field: 'descripcionConceptoGasto', 'error')} required">
	<label for="descripcionConceptoGasto">
		<g:message code="conceptoGasto.descripcionConceptoGasto.label" default="Descripcion Concepto Gasto" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcionConceptoGasto" required="" value="${conceptoGastoInstance?.descripcionConceptoGasto}"/>

</div>

