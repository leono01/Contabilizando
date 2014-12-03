<%@ page import="com.contabilizando.Movimiento" %>
<%@ page import="com.contabilizando.catalogos.ConceptoGasto" %>

<table data-provides="rowlink" class="table table-striped table-bordered table-hover">
    <tbody>
        <tr>
            <td>
                <div class="well">
                    <div class="col-lg-6">
                        <div class="page-header">
                            <h3>Datos del comprobante</h3>
                        </div>
                        <table>
                            <body>
                            <tr>
                                <td>
                                    <label for="fechaDeCertificacion">
                                        <g:message code="movimiento.fechaDeCertificacion.label" default="Fecha De Certificación" />                            
                                    </label>
                                  
                                    <g:datePicker name="fechaDeCertificacion" precision="day"/>
                                    <!--<g:formatDate format="dd-MM-yyyy HH:mm:ss" date="${movimientoInstance?.fechaDeCertificacion}" />-->                                    
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="folio">
                                        <g:message code="movimiento.folio.label" default="Folio" />
                                    </label>                                   
                                    <g:textField name="folio" required="" value="${movimientoInstance?.folio}" size="10" style="text-align:right"/>                                    
                                </td>
                                <td>
                                  
                                </td>
                            </tr>
                            <!--<tr>
                                <td>
                                    <label for="formaDePago">
                                        <g:message code="movimiento.formaDePago.label" default="Forma De Pago" />

                                    </label>
                                    
                                        <g:textField name="formaDePago" required="" value="${movimientoInstance?.formaDePago}" size="28" style="text-align:center"/>
                                    
                                </td>
                                <td>
                                    <label for="metodoDePago">
                                        <g:message code="movimiento.metodoDePago.label" default="Método De Pago" />

                                    </label>
                                    
                                        <g:textField name="metodoDePago" required="" value="${movimientoInstance?.metodoDePago}" size="27" style="text-align:center"/>
                                    
                                </td>
                            </tr>-->
                            </body>
                        </table>
                    </div>
                </div>
                
            </td>
        </tr>
    </tbody>
</table>
</br>

<!--<table data-provides="rowlink" class="table table-striped table-bordered table-hover">
    <body>
    <tr>
        <td>
            <div class="well">
                <div class="col-lg-6">
                    <div class="page-header">
                        <h3>Emisor</h3>                            
                    </div>
                    <g:render template="emisor"/>
                </div>
            </div>
        </td>
    </tr>
</body>
</table>-->

<table data-provides="rowlink" class="table table-striped table-bordered table-hover">
    <body>
    <tr>
        <td>
            <div class="well">
                <div class="col-lg-6">
                    <div class="page-header">
                        <h3>Proveedor</h3>                            
                    </div>
                    <!--<g:render template="receptor"/>-->
                    <g:select id="cliente" name="cliente" from="${com.contabilizando.Persona.list()}" optionKey="id" required="" value="${movimientoInstance?.emisor?.id}" class="many-to-one"/>
                </div>
            </div>
        </td>
    </tr>
</body>
</table>


<div class="col-lg-6">
    <div class="page-header">
        <h4>Conceptos</h4>
    </div>
    <table class="table">
        <thead>
            <tr>
                <!--<th style="text-align:left">Cantidad</th>-->
                <!--<th style="text-align:left">Unidad</th>-->
                <th style="text-align:left">Descripción</th>
                <th style="text-align:center">Valor Unitario</th>
                <th style="text-align:center">Importe</th>
            </tr>
        </thead>
        <tbody>
            <!--<g:each in="${movimientoInstance?.conceptos}" status="i" var="concepto">
                <tr class="success">
                    <td style="text-align-center">
                        <div class="fieldcontain ${hasErrors(bean: concepto, field: 'cantidad', 'error')} required">

                            <g:textField name="cantidad" required="" value="${concepto?.cantidad}" size="4" style="text-align:center"/>

                        </div>
                    </td>

                    <td><div class="fieldcontain ${hasErrors(bean: concepto, field: 'descripcion', 'error')} required">

                            <g:textField name="unidad" required="" value="${concepto?.unidad}" size="20" style="text-align:center"/>
                        </div>
                    </td>

                    <td><div class="fieldcontain ${hasErrors(bean: concepto, field: 'unidad', 'error')} required">

                            <g:textField name="descripcion" required="" value="${concepto?.descripcion}" size="28" style="text-align:center"/>
                        </div>
                    </td>

                    <td><div class="fieldcontain ${hasErrors(bean: concepto, field: 'valorUnitario', 'error')} required">

                            <g:textField name="valorUnitario" required="" value="${concepto?.valorUnitario}" size="5" style="text-align:right"/>
                        </div>
                    </td>

                    <td><div class="fieldcontain ${hasErrors(bean: concepto, field: 'importe', 'error')} required">

                            <g:textField name="importe" required="" value="${concepto?.importe}" size="5" style="text-align:right"/>
                        </div>
                    </td>
                </tr>
            </g:each>-->
            <tr class="info">
                    <!--<td style="text-align-center">
                        <div class="fieldcontain ${hasErrors(bean: concepto, field: 'cantidad', 'error')} required">

                            <g:textField name="cantidad" required="" value="${concepto?.cantidad}" size="4" style="text-align:center"/>
                            
                        </div>
                    </td>

                    <td><div class="fieldcontain ${hasErrors(bean: concepto, field: 'descripcion', 'error')} required">

                            <g:textField name="unidad" required="" value="${concepto?.unidad}" size="20" style="text-align:center"/>
                        </div>
                    </td>-->

                    <td><div class="fieldcontain ${hasErrors(bean: concepto, field: 'unidad', 'error')} required">

                            <!--<g:textField name="descripcion" required="" value="${concepto?.descripcion}" size="28" style="text-align:center"/>-->
                            <g:select   id="conceptoGasto" name="conceptoGasto" 
                                        from="${com.contabilizando.catalogos.ConceptoGasto.list()}" 
                                        optionKey="id" required="" value="${conceptoGastoInstance?.id}"/>
                        </div>
                    </td>

                    <td><div class="fieldcontain ${hasErrors(bean: concepto, field: 'valorUnitario', 'error')} required">

                            <g:textField name="valorUnitario" required="" value="" size="5" style="text-align:right"/>
                        </div>
                    </td>

                    <td><div class="fieldcontain ${hasErrors(bean: concepto, field: 'importe', 'error')} required">

                            <g:textField name="importe" required="" value="" size="5" style="text-align:right"/>
                        </div>
                    </td>
                </tr>
        </tbody>
    </table>

</div><!-- End .col-lg-6  -->
</br>

<div class="col-lg-6">
    <div class="page-header">
        <h4>Impuestos</h4>
    </div>
    <table class="table">
        <thead>
            <tr>
                <th style="text-align:left">Impuesto</th>
                <th style="text-align:left">Tasa %</th>
                <th style="text-align:left">Importe</th>                
            </tr>
        </thead>
        <tbody>          
            <g:each in="${movimientoInstance?.impuestos}" status="j" var="impuesto">

                <tr class="error">
                    <td>
                        <div class="fieldcontain ${hasErrors(bean: impuestoInstance, field: 'nombreDelImpuesto', 'error')} required">

                            <g:textField name="nombreDelImpuesto" required="" value="${impuesto?.nombreDelImpuesto}"/>

                        </div>
                    </td>

                    <td>
                        <div class="fieldcontain ${hasErrors(bean: impuestoInstance, field: 'tasa', 'error')} required">

                            <g:textField name="tasa" required="" value="${impuesto?.tasa}"/>
                        </div>
                    </td>

                    <td>
                        <div class="fieldcontain ${hasErrors(bean: impuestoInstance, field: 'importe', 'error')} required">

                            <g:textField name="importe" required="" value="${impuesto?.importe}"/>
                        </div>
                    </td>
                </tr>
            </g:each>
           
        </tbody>
    </table>
</div>

<!--<div class="col-lg-6" style="text-align:right">
    <div class="page-header">        
    </div>
    <table class="table">
        <tbody>          
            <tr class="error">
                <td>
                    <div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'importeNeto', 'error')} required">
                        <label for="importeNeto">
                            <g:message code="movimiento.importeNeto.label" default="Importe Neto" />
                            <span class="required-indicator">*</span>
                        </label>

                    </div>
                </td>
                <td>
                    <g:if test="${movimientoInstance?.importeNeto}">
                        <g:textField name="importeNeto" value="${movimientoInstance.importeNeto}" required="" size="15" style="text-align:right"/>
                    </g:if>
                    <g:else>
                        <font color="ORANGE"> No hay datos en el archivo XML</font>
                    </g:else>
                </td>
            </tr>
            <tr class="error">
                <td>
                    <div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'totalImpuestosTrasladados', 'error')} required">
                        <label for="totalImpuestosTrasladados">
                            <g:message code="movimiento.totalImpuestosTrasladados.label" default="Total Impuestos Trasladados" />
                            <span class="required-indicator">*</span>
                        </label>

                    </div>
                </td>
                <td>
                    <g:if test="${movimientoInstance?.totalImpuestosTrasladados}">            
                        <g:textField name="totalImpuestosTrasladados" required="" value="${movimientoInstance?.totalImpuestosTrasladados}" size="15" style="text-align:right"/>
                    </g:if>
                    <g:else>
                        <font color="ORANGE"> No hay datos en el archivo XML</font>
                    </g:else>
                </td>
            </tr>
            <tr class="error">
                <td>
                    <div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'total', 'error')} required">
                        <label for="total">
                            <g:message code="movimiento.total.label" default="Total" />
                            <span class="required-indicator">*</span>
                        </label>
                        
                    </div>
                </td>
                <td>
                    <g:if test="${movimientoInstance?.total}">
                        <g:textField name="total" value="${movimientoInstance.total}" required="" size="15" style="text-align:right"/>
                    </g:if>
                    <g:else>
                        <font color="ORANGE"> No hay datos en el archivo XML</font>
                    </g:else>
                </td>
            </tr>
        </tbody>
    </table>
</div>-->
