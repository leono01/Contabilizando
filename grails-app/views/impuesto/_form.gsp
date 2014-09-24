<%@ page import="com.contabilizando.Impuesto" %>



<div class="fieldcontain ${hasErrors(bean: impuestoInstance, field: 'nombreDelImpuesto', 'error')} ">
	<label for="nombreDelImpuesto">
		<g:message code="impuesto.nombreDelImpuesto.label" default="Nombre Del Impuesto" />
		
	</label>
	<g:textField name="nombreDelImpuesto" value="${impuestoInstance?.nombreDelImpuesto}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: impuestoInstance, field: 'tasa', 'error')} ">
	<label for="tasa">
		<g:message code="impuesto.tasa.label" default="Tasa" />
		
	</label>
	<g:field name="tasa" value="${fieldValue(bean: impuestoInstance, field: 'tasa')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: impuestoInstance, field: 'importe', 'error')} ">
	<label for="importe">
		<g:message code="impuesto.importe.label" default="Importe" />
		
	</label>
	<g:field name="importe" value="${fieldValue(bean: impuestoInstance, field: 'importe')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: impuestoInstance, field: 'movimiento', 'error')} ">
	<label for="movimiento">
		<g:message code="impuesto.movimiento.label" default="Movimiento" />
		
	</label>
	<g:select id="movimiento" name="movimiento.id" from="${com.contabilizando.Movimiento.list()}" optionKey="id" value="${impuestoInstance?.movimiento?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

