<%@ page import="com.contabilizando.catalogos.Pais" %>



<div class="fieldcontain ${hasErrors(bean: paisInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="pais.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${paisInstance?.nombre}"/>

</div>

