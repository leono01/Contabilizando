<%@ page import="com.contabilizando.catalogos.Estado" %>



<div class="fieldcontain ${hasErrors(bean: estadoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="estado.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${estadoInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estadoInstance, field: 'pais', 'error')} required">
	<label for="pais">
		<g:message code="estado.pais.label" default="Pais" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="pais" name="pais.id" from="${com.contabilizando.catalogos.Pais.list()}" optionKey="id" required="" value="${estadoInstance?.pais?.id}" class="many-to-one"/>

</div>

