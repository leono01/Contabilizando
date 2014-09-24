<%@ page import="com.contabilizando.Movimiento" %>



<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'serie', 'error')} ">
	<label for="serie">
		<g:message code="movimiento.serie.label" default="Serie" />
		
	</label>
	<g:textField name="serie" value="${movimientoInstance?.serie}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'folio', 'error')} ">
	<label for="folio">
		<g:message code="movimiento.folio.label" default="Folio" />
		
	</label>
	<g:textField name="folio" value="${movimientoInstance?.folio}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'fechaDeCertificacion', 'error')} ">
	<label for="fechaDeCertificacion">
		<g:message code="movimiento.fechaDeCertificacion.label" default="Fecha De Certificacion" />
		
	</label>
	<g:datePicker name="fechaDeCertificacion" precision="day"  value="${movimientoInstance?.fechaDeCertificacion}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'lugarDeExpedicion', 'error')} ">
	<label for="lugarDeExpedicion">
		<g:message code="movimiento.lugarDeExpedicion.label" default="Lugar De Expedicion" />
		
	</label>
	<g:textField name="lugarDeExpedicion" value="${movimientoInstance?.lugarDeExpedicion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'formaDePago', 'error')} ">
	<label for="formaDePago">
		<g:message code="movimiento.formaDePago.label" default="Forma De Pago" />
		
	</label>
	<g:textField name="formaDePago" value="${movimientoInstance?.formaDePago}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'metodoDePago', 'error')} ">
	<label for="metodoDePago">
		<g:message code="movimiento.metodoDePago.label" default="Metodo De Pago" />
		
	</label>
	<g:textField name="metodoDePago" value="${movimientoInstance?.metodoDePago}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'numeroDeSerieDeCertificadoDelEmisor', 'error')} ">
	<label for="numeroDeSerieDeCertificadoDelEmisor">
		<g:message code="movimiento.numeroDeSerieDeCertificadoDelEmisor.label" default="Numero De Serie De Certificado Del Emisor" />
		
	</label>
	<g:textField name="numeroDeSerieDeCertificadoDelEmisor" value="${movimientoInstance?.numeroDeSerieDeCertificadoDelEmisor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'folioFiscal', 'error')} ">
	<label for="folioFiscal">
		<g:message code="movimiento.folioFiscal.label" default="Folio Fiscal" />
		
	</label>
	<g:textField name="folioFiscal" value="${movimientoInstance?.folioFiscal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'numeroDeSerieDeCertificadoDelSat', 'error')} ">
	<label for="numeroDeSerieDeCertificadoDelSat">
		<g:message code="movimiento.numeroDeSerieDeCertificadoDelSat.label" default="Numero De Serie De Certificado Del Sat" />
		
	</label>
	<g:textField name="numeroDeSerieDeCertificadoDelSat" value="${movimientoInstance?.numeroDeSerieDeCertificadoDelSat}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'importeNeto', 'error')} ">
	<label for="importeNeto">
		<g:message code="movimiento.importeNeto.label" default="Importe Neto" />
		
	</label>
	<g:field name="importeNeto" value="${fieldValue(bean: movimientoInstance, field: 'importeNeto')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'totalImpuestosTrasladados', 'error')} ">
	<label for="totalImpuestosTrasladados">
		<g:message code="movimiento.totalImpuestosTrasladados.label" default="Total Impuestos Trasladados" />
		
	</label>
	<g:field name="totalImpuestosTrasladados" value="${fieldValue(bean: movimientoInstance, field: 'totalImpuestosTrasladados')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'total', 'error')} ">
	<label for="total">
		<g:message code="movimiento.total.label" default="Total" />
		
	</label>
	<g:field name="total" value="${fieldValue(bean: movimientoInstance, field: 'total')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'tipoDeOperacion', 'error')} ">
	<label for="tipoDeOperacion">
		<g:message code="movimiento.tipoDeOperacion.label" default="Tipo De Operacion" />
		
	</label>
	<g:select id="tipoDeOperacion" name="tipoDeOperacion.id" from="${com.contabilizando.TipoDeOperacion.list()}" optionKey="id" value="${movimientoInstance?.tipoDeOperacion?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'emisor', 'error')} ">
	<label for="emisor">
		<g:message code="movimiento.emisor.label" default="Emisor" />
		
	</label>
	<g:select id="emisor" name="emisor.id" from="${com.contabilizando.Persona.list()}" optionKey="id" value="${movimientoInstance?.emisor?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'receptor', 'error')} ">
	<label for="receptor">
		<g:message code="movimiento.receptor.label" default="Receptor" />
		
	</label>
	<g:select id="receptor" name="receptor.id" from="${com.contabilizando.Persona.list()}" optionKey="id" value="${movimientoInstance?.receptor?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'calleExpedicion', 'error')} ">
	<label for="calleExpedicion">
		<g:message code="movimiento.calleExpedicion.label" default="Calle Expedicion" />
		
	</label>
	<g:textField name="calleExpedicion" value="${movimientoInstance?.calleExpedicion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'numeroExteriorExpedicion', 'error')} ">
	<label for="numeroExteriorExpedicion">
		<g:message code="movimiento.numeroExteriorExpedicion.label" default="Numero Exterior Expedicion" />
		
	</label>
	<g:textField name="numeroExteriorExpedicion" value="${movimientoInstance?.numeroExteriorExpedicion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'numeroInteriorExpedicion', 'error')} ">
	<label for="numeroInteriorExpedicion">
		<g:message code="movimiento.numeroInteriorExpedicion.label" default="Numero Interior Expedicion" />
		
	</label>
	<g:textField name="numeroInteriorExpedicion" value="${movimientoInstance?.numeroInteriorExpedicion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'coloniaExpedicion', 'error')} ">
	<label for="coloniaExpedicion">
		<g:message code="movimiento.coloniaExpedicion.label" default="Colonia Expedicion" />
		
	</label>
	<g:textField name="coloniaExpedicion" value="${movimientoInstance?.coloniaExpedicion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'delegacionOMunicipioExpedicion', 'error')} ">
	<label for="delegacionOMunicipioExpedicion">
		<g:message code="movimiento.delegacionOMunicipioExpedicion.label" default="Delegacion OM unicipio Expedicion" />
		
	</label>
	<g:textField name="delegacionOMunicipioExpedicion" value="${movimientoInstance?.delegacionOMunicipioExpedicion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'estadoExpedicion', 'error')} ">
	<label for="estadoExpedicion">
		<g:message code="movimiento.estadoExpedicion.label" default="Estado Expedicion" />
		
	</label>
	<g:select id="estadoExpedicion" name="estadoExpedicion.id" from="${com.contabilizando.catalogos.Estado.list()}" optionKey="id" value="${movimientoInstance?.estadoExpedicion?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'paisExpedicion', 'error')} ">
	<label for="paisExpedicion">
		<g:message code="movimiento.paisExpedicion.label" default="Pais Expedicion" />
		
	</label>
	<g:select id="paisExpedicion" name="paisExpedicion.id" from="${com.contabilizando.catalogos.Pais.list()}" optionKey="id" value="${movimientoInstance?.paisExpedicion?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'codigoPostalExpedicion', 'error')} ">
	<label for="codigoPostalExpedicion">
		<g:message code="movimiento.codigoPostalExpedicion.label" default="Codigo Postal Expedicion" />
		
	</label>
	<g:textField name="codigoPostalExpedicion" value="${movimientoInstance?.codigoPostalExpedicion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'conceptos', 'error')} ">
	<label for="conceptos">
		<g:message code="movimiento.conceptos.label" default="Conceptos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${movimientoInstance?.conceptos?}" var="c">
    <li><g:link controller="concepto" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="concepto" action="create" params="['movimiento.id': movimientoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'concepto.label', default: 'Concepto')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'impuestos', 'error')} ">
	<label for="impuestos">
		<g:message code="movimiento.impuestos.label" default="Impuestos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${movimientoInstance?.impuestos?}" var="i">
    <li><g:link controller="impuesto" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="impuesto" action="create" params="['movimiento.id': movimientoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'impuesto.label', default: 'Impuesto')])}</g:link>
</li>
</ul>


</div>

