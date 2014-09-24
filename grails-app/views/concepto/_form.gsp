<%@ page import="com.contabilizando.Concepto" %>



<div class="fieldcontain ${hasErrors(bean: conceptoInstance, field: 'cantidad', 'error')} ">
	<label for="cantidad">
		<g:message code="concepto.cantidad.label" default="Cantidad" />
		
	</label>
	<g:textField name="cantidad" value="${conceptoInstance?.cantidad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conceptoInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="concepto.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${conceptoInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conceptoInstance, field: 'numeroDeIdentificacion', 'error')} ">
	<label for="numeroDeIdentificacion">
		<g:message code="concepto.numeroDeIdentificacion.label" default="Numero De Identificacion" />
		
	</label>
	<g:textField name="numeroDeIdentificacion" value="${conceptoInstance?.numeroDeIdentificacion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conceptoInstance, field: 'unidad', 'error')} ">
	<label for="unidad">
		<g:message code="concepto.unidad.label" default="Unidad" />
		
	</label>
	<g:textField name="unidad" value="${conceptoInstance?.unidad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conceptoInstance, field: 'valorUnitario', 'error')} ">
	<label for="valorUnitario">
		<g:message code="concepto.valorUnitario.label" default="Valor Unitario" />
		
	</label>
	<g:field name="valorUnitario" value="${fieldValue(bean: conceptoInstance, field: 'valorUnitario')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conceptoInstance, field: 'importe', 'error')} ">
	<label for="importe">
		<g:message code="concepto.importe.label" default="Importe" />
		
	</label>
	<g:field name="importe" value="${fieldValue(bean: conceptoInstance, field: 'importe')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: conceptoInstance, field: 'movimiento', 'error')} ">
	<label for="movimiento">
		<g:message code="concepto.movimiento.label" default="Movimiento" />
		
	</label>
	<g:select id="movimiento" name="movimiento.id" from="${com.contabilizando.Movimiento.list()}" optionKey="id" value="${conceptoInstance?.movimiento?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

