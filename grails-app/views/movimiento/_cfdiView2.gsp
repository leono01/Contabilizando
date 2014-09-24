<%@ page import="com.contabilizando.Movimiento" %>

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
                                    
                                        <g:formatDate format="dd-MM-yyyy HH:mm:ss" date="${movimientoInstance?.fechaDeCertificacion}" />
                                    
                                </td>
                                <td>
                                    <label for="folioFiscal">                                                
                                        <g:message code="movimiento.folioFiscal.label" default="Folio Fiscal:" />

                                    </label>
                                    
                                        <g:textField name="folioFiscal" required="" value="${movimientoInstance?.folioFiscal}" size="35" style="text-align:center"/>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="numeroDeSerieDeCertificadoDelEmisor">
                                        <g:message code="movimiento.numeroDeSerieDeCertificadoDelEmisor.label" default="No. Serie Certificado Emisor" />

                                    </label>
                                    
                                        <g:textField name="numeroDeSerieDeCertificadoDelEmisor" required="" value="${movimientoInstance?.numeroDeSerieDeCertificadoDelEmisor}" size="20" style="text-align:center"/>
                                    
                                </td>
                                <td>
                                    <label for="numeroDeSerieDeCertificadoDelSat">
                                        <g:message code="movimiento.numeroDeSerieDeCertificadoDelSat.label" default="No. Serie Certificado SAT" />

                                    </label>
                                    
                                        <g:textField name="numeroDeSerieDeCertificadoDelSat" required="" value="${movimientoInstance?.numeroDeSerieDeCertificadoDelSat}" size="20" style="text-align:center"/>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="folio">
                                        <g:message code="movimiento.folio.label" default="Folio" />

                                    </label>
                                    
                                        <g:textField name="folio" required="" value="${movimientoInstance?.folio}" size="10" style="text-align:center"/>
                                    
                                </td>
                                <td>
                                    <label for="serie">
                                        <g:message code="movimiento.serie.label" default="Serie" />

                                    </label>
                                    
                                        <g:textField name="serie" required="" value="${movimientoInstance?.serie}" size="10" style="text-align:center"/>
                                    
                                </td>
                            </tr>
                            <tr>
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
                            </tr>



                    <%--<div class="row">
                        <label for="lugarDeExpedicion">
                            <g:message code="movimiento.lugarDeExpedicion.label" default="Lugar Expedicion" />                            
                        </label>
                        <g:if test="${movimientoInstance?.lugarDeExpedicion}">
                            <g:textField name="lugarDeExpedicion" required="" value="${movimientoInstance?.lugarDeExpedicion}" size="30" style="text-align:right"/>
                        </g:if>
                        <g:else>
                            <font color="ORANGE"> No hay datos en el archivo XML</font>
                        </g:else>
                    </div>--%>

                            </body>
                        </table>
                    </div>
                </div>
                <div class="well">
                    <div class="col-lg-6">
                        <div class="page-header">
                            <h3>Comprobante expedido en:</h3>
                        </div>
                        <table>
                            <body>
                            <tr>
                                <td>
                                    <label for="calleExpedicion">
                                        <g:message code="movimiento.calleExpedicion.label" default="Calle" />                            
                                    </label>
                                    
                                        <g:textField name="calleExpedicion" required="" value="${movimientoInstance?.calleExpedicion}" size="25" style="text-align:center"/>
                                    
                                </td>

                                <td>
                                    <label for="numeroExteriorExpedicion">
                                        <g:message code="movimiento.numeroExteriorExpedicion.label" default="No. Exterior" />                            
                                    </label>
                                    
                                        <g:textField name="numeroExteriorExpedicion" required="" value="${movimientoInstance?.numeroExteriorExpedicion}" size="7" style="text-align:center"/>
                                    
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <label for="coloniaExpedicion">
                                        <g:message code="movimiento.coloniaExpedicion.label" default="Colonia" />

                                    </label>
                                    
                                        <g:textField name="coloniaExpedicion" required="" value="${movimientoInstance?.coloniaExpedicion}" size="18" style="text-align:center"/>
                                    
                                </td>
                                <td>
                                    <label for="numeroInteriorExpedicion">
                                        <g:message code="movimiento.numeroInteriorExpedicion.label" default="No. Interior" />

                                    </label>
                                    
                                        <g:textField name="numeroInteriorExpedicion" required="" value="${movimientoInstance?.numeroInteriorExpedicion}" size="10" style="text-align:center"/>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="codigoPostalExpedicion">
                                        <g:message code="movimiento.codigoPostalExpedicion.label" default="Código Postal" />
                                        
                                    </label>
                                    
                                        <g:textField name="codigoPostalExpedicion" required="" value="${movimientoInstance?.codigoPostalExpedicion}" size="6" style="text-align:center"/>
                                    
                                </td>
                                <td>
                                    <label for="delegacionOMunicipioExpedicion">
                                        <g:message code="movimiento.delegacionOMunicipioExpedicion.label" default="Municipio" />

                                    </label>
                                    
                                        <g:textField name="delegacionOMunicipioExpedicion" required="" value="${movimientoInstance?.delegacionOMunicipioExpedicion}" size="18" style="text-align:center"/>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <label for="estadoExpedicion">
                                        <g:message code="movimiento.estadoExpedicion.label" default="Estado" />

                                    </label>
                                    
                                        <g:textField id="estadoExpedicion" name="estadoExpedicion" required="" value="${movimientoInstance?.estadoExpedicion?.nombre}" size="15" style="text-align:center"/>
                                    
                                </td>

                                <td>
                                    <label for="paisExpedicion">
                                        <g:message code="movimiento.paisExpedicion.label" default="País" />

                                    </label>
                                    
                                        <g:textField id="paisExpedicion" name="paisExpedicion" required="" value="${movimientoInstance?.paisExpedicion?.nombre}" size="15" style="text-align:center"/>
                                    
                                </td>
                            </tr>
                            </body>
                        </table>
                    </div>
                </div>
            </td>
        </tr>
    </tbody>
</table>
</br>

<table data-provides="rowlink" class="table table-striped table-bordered table-hover">
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
</table>

<table data-provides="rowlink" class="table table-striped table-bordered table-hover">
    <body>
    <tr>
        <td>
            <div class="well">
                <div class="col-lg-6">
                    <div class="page-header">
                        <h3>Receptor</h3>                            
                    </div>
                    <g:render template="receptor"/>
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
                <th style="text-align:left">Cantidad</th>
                <th style="text-align:left">Unidad</th>
                <th style="text-align:left">Descripción</th>
                <th style="text-align:center">Valor Unitario</th>
                <th style="text-align:center">Importe</th>
            </tr>
        </thead>
        <tbody>
            <g:each in="${movimientoInstance?.conceptos}" status="i" var="concepto">
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
            </g:each>
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

<div class="col-lg-6" style="text-align:right">
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
</div>



<%--<div class="fieldcontain ${hasErrors(bean: movimientoInstance, field: 'tipoDeOperacion', 'error')} required">
    <label for="tipoDeOperacion">
        <g:message code="movimiento.tipoDeOperacion.label" default="Tipo De Operacion" />        
    </label>
    <g:if test="${movimientoInstance?.tipoDeOperacion?.nombreDeTipoDeOperacion}">
        <g:textField id="tipoDeOperacion" name="tipoDeOperacion" required="" value="${movimientoInstance?.tipoDeOperacion?.nombreDeTipoDeOperacion}"/>
    </g:if>
    <g:else>
        <font color="ORANGE"> No hay datos en el archivo XML</font>
    </g:else>
</div>--%>