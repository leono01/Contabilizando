<%@ page import="com.contabilizando.TipoDeOperacion" %>



<div class="fieldcontain ${hasErrors(bean: tipoDeOperacionInstance, field: 'nombreDeTipoDeOperacion', 'error')} ">
	<label for="nombreDeTipoDeOperacion">
		<g:message code="tipoDeOperacion.nombreDeTipoDeOperacion.label" default="Nombre De Tipo De Operacion" />
		
	</label>
	<g:textField name="nombreDeTipoDeOperacion" maxlength="200" value="${tipoDeOperacionInstance?.nombreDeTipoDeOperacion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tipoDeOperacionInstance, field: 'categoria', 'error')} required">
	<label for="categoria">
		<g:message code="tipoDeOperacion.categoria.label" default="Categoria" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="categoria" name="categoria.id" from="${com.contabilizando.Categoria.list()}" optionKey="id" required="" value="${tipoDeOperacionInstance?.categoria?.id}" class="many-to-one"/>

</div>

