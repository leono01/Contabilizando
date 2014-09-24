<%@ page import="com.contabilizando.Movimiento" %>
<%@ page import="com.contabilizando.PersonaFisica" %>
<%@ page import="com.contabilizando.PersonaMoral" %>

<table>
    <body>
    <tr>
        <td colspan="3" style="text-align: center">
            <label for="rfc">
                <g:message code="personaFisica.rfc.label" default="RFC" />
                <i class="icon12 i-radio-checked red"></i>
            </label>
            <g:if test="${movimientoInstance?.emisor?.rfc}">
                <g:textField name="rfc" maxlength="13" required="" value="${movimientoInstance?.emisor?.rfc}" size="15" style="text-align:center"/>
            </g:if>
            <g:else>
                <font color="ORANGE"> No hay datos en el archivo XML</font>
            </g:else>
        </td>
    </tr>   
    <tr>
        <g:if test="${movimientoInstance?.emisor instanceof PersonaFisica}">
        <td>
            <label for="nombres">

                <g:message code="personaFisica.nombres.label" default="Nombres" />
                <i class="icon12 i-radio-checked red"></i>
            </label>
            <g:if test="${movimientoInstance?.emisor?.nombres}">
                <g:textField name="nombres" required="" value="${movimientoInstance?.emisor?.nombres}" size="30" style="text-align:center"/>
            </g:if>
            <g:else>
                <font color="ORANGE"> No hay datos en el archivo XML</font>
            </g:else>
        </td>

        <td>
            <label for="apellidoPaterno">

                <g:message code="personaFisica.apellidoPaterno.label" default="Apellido Paterno" />
                <i class="icon12 i-radio-checked red"></i>
            </label>
            <g:if test="${movimientoInstance?.emisor?.apellidoPaterno}">
                <g:textField name="apellidoPaterno" required="" value="${movimientoInstance?.emisor?.apellidoPaterno}" size="25" style="text-align:center"/>
            </g:if>
            <g:else>
                <font color="ORANGE"> No hay datos en el archivo XML</font>
            </g:else>
        </td>

        <td>
            <label for="apellidoMaterno">

                <g:message code="personaFisica.apellidoMaterno.label" default="Apellido Materno" />
                <i class="icon12 i-radio-checked red"></i>
            </label>
            <g:if test="${movimientoInstance?.emisor?.apellidoMaterno}">
                <g:textField name="apellidoMaterno" required="" value="${movimientoInstance?.emisor?.apellidoMaterno}" size="25" style="text-align:center"/>
            </g:if>
            <g:else>
                <font color="ORANGE"> No hay datos en el archivo XML</font>
            </g:else>  
        </td>
    </g:if>

    <g:if test="${movimientoInstance?.emisor instanceof PersonaMoral}">
        <td colspan="2">
            <label for="denominacionSocial">

                <g:message code="personaMoral.denominacionSocial.label" default="Denominacion Social" />
                <i class="icon12 i-radio-checked red"></i>
            </label>
            <g:if test="${movimientoInstance?.emisor?.denominacionSocial}">
                <g:textField name="denominacionSocial" required="" value="${movimientoInstance?.emisor?.denominacionSocial}" size="35" style="text-align:center"/>
            </g:if>
            <g:else>
                <font color="ORANGE"> No hay datos en el archivo XML</font>
            </g:else>
        </td>

        <td>
            <label for="nombreComercial">

                <g:message code="personaMoral.nombreComercial.label" default="Nombre Comercial" />
                <i class="icon12 i-radio-checked red"></i>
            </label>
            <g:if test="${movimientoInstance?.emisor?.nombreComercial}">
                <g:textField name="nombreComercial" required="" value="${movimientoInstance?.emisor?.nombreComercial}" size="25" style="text-align:center"/>
            </g:if>
            <g:else>
                <font color="ORANGE"> No hay datos en el archivo XML</font>
            </g:else>
        </td>
    </g:if>
</tr>
<tr>
    <td>
        <label for="calleFiscal">

            <g:message code="personaFisica.calleFiscal.label" default="Calle" />        
            <i class="icon12 i-radio-checked red"></i>
        </label>
        <g:if test="${movimientoInstance?.emisor?.calleFiscal}">
            <g:textField name="calleFiscal" required="" value="${movimientoInstance?.emisor?.calleFiscal}"size="30" style="text-align:center"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </td>
    <td>
        <label for="numeroExteriorFiscal">

            <g:message code="personaFisica.numeroExteriorFiscal.label" default="No. Exterior" />        
            <i class="icon12 i-radio-checked red"></i>
        </label>
        <g:if test="${movimientoInstance?.emisor?.numeroExteriorFiscal}">
            <g:textField name="numeroExteriorFiscal" required="" value="${movimientoInstance?.emisor?.numeroExteriorFiscal}" size="5" style="text-align:center"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </td>
    <td>
        <label for="numeroInteriorFiscal">

            <g:message code="personaFisica.numeroInteriorFiscal.label" default="No. Interior" />        
            <i class="icon12 i-radio-checked red"></i>
        </label>
        <g:if test="${movimientoInstance?.emisor?.numeroInteriorFiscal}">
            <g:textField name="numeroInteriorFiscal" required="" value="${movimientoInstance?.emisor?.numeroInteriorFiscal}" size="20" style="text-align:center"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </td>
</tr>
<tr>
    <td>
        <label for="coloniaFiscal">

            <g:message code="personaFisica.coloniaFiscal.label" default="Colonia" />
            <i class="icon12 i-radio-checked red"></i>
        </label>
        <g:if test="${movimientoInstance?.emisor?.coloniaFiscal}">
            <g:textField name="coloniaFiscal" required="" value="${movimientoInstance?.emisor?.coloniaFiscal}" size="25" style="text-align:center"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </td>
    <td>
        <label for="delegacionOMunicipioFiscal">

            <g:message code="personaFisica.delegacionOMunicipioFiscal.label" default="Municipio" />
            <i class="icon12 i-radio-checked red"></i>
        </label>
        <g:if test="${movimientoInstance?.emisor?.delegacionOMunicipioFiscal}">
            <g:textField name="delegacionOMunicipioFiscal" required="" value="${movimientoInstance?.emisor?.delegacionOMunicipioFiscal}" size="20" style="text-align:center"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </td>
    <td>
        <label for="codigoPostalFiscal">

            <g:message code="personaFisica.codigoPostalFiscal.label" default="Código Postal" />
            <i class="icon12 i-radio-checked red"></i>
        </label>
        <g:if test="${movimientoInstance?.emisor?.codigoPostalFiscal}">
            <g:textField name="codigoPostalFiscal" required="" value="${movimientoInstance?.emisor?.codigoPostalFiscal}" size="5" style="text-align:center"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </td>
</tr>
<tr>
    <td>
        <label for="estadoFiscal">

            <g:message code="personaFisica.estadoFiscal.label" default="Estado" />
            <i class="icon12 i-radio-checked red"></i>
        </label>
        <g:if test="${movimientoInstance?.emisor?.estadoFiscal?.nombre}">
            <g:textField id="estadoFiscal" name="estadoFiscal" required="" value="${movimientoInstance?.emisor?.estadoFiscal?.nombre}" size="18" style="text-align:center"/>        
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </td>
    <td>
        <label for="paisFiscal">

            <g:message code="personaFisica.paisFiscal.label" default="País" />
            <i class="icon12 i-radio-checked red"></i>
        </label>
        <g:if test="${movimientoInstance?.emisor?.paisFiscal?.nombre}">
            <g:textField id="paisFiscal" name="paisFiscal" required="" value="${movimientoInstance?.emisor?.paisFiscal?.nombre}" size="8" style="text-align:center"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </td>
    <td>
        <label for="telefono">        
            <g:message code="personaFisica.telefono.label" default="Teléfono" />

        </label>
        <g:if test="${movimientoInstance?.emisor?.telefono}">
            <g:textField name="telefono" required="" value="${movimientoInstance?.emisor?.telefono}" size="10" style="text-align:center"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </td>
</tr>
<tr>
    <td>
        <label for="email">

            <g:message code="personaFisica.email.label" default="Email" />
            <i class="icon12 i-radio-checked red"></i>
        </label>
        <g:if test="${movimientoInstance?.emisor?.email}">
            <g:field type="email" name="email" required="" value="${movimientoInstance?.emisor?.email}" size="8" style="text-align:center"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </td>
    <td colspan="2">
        <label for="regimenFiscal">

            <g:message code="personaFisica.regimenFiscal.label" default="Régimen Fiscal" />
            <i class="icon12 i-radio-checked red"></i>
        </label>
        <g:if test="${movimientoInstance?.emisor?.regimenFiscal}">
            <g:textField name="regimenFiscal" required="" value="${movimientoInstance?.emisor?.regimenFiscal}" size="50" style="text-align:center"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </td>        
</tr>
</body>
</table>

