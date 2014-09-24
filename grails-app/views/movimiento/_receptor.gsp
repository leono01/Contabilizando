<%@ page import="com.contabilizando.Movimiento" %>
<%@ page import="com.contabilizando.PersonaFisica" %>
<%@ page import="com.contabilizando.PersonaMoral" %>
<table>
    <body>        
    <tr>
        <td colspan="3" style="text-align: center">
            <label for="rfc">
                <g:message code="personaFisica.rfc.label" default="RFC" />

            </label>
            <g:if test="${movimientoInstance?.receptor?.rfc}">
                <g:textField name="rfc" maxlength="13" required="" value="${movimientoInstance?.receptor?.rfc}" size="15" style="text-align:center"/>
            </g:if>
            <g:else>
                <font color="ORANGE"> No hay datos en el archivo XML</font>
            </g:else>
        </td>
    </tr>
    <tr>
        <g:if test="${movimientoInstance?.receptor instanceof PersonaFisica}">
        <td>
            <label for="nombres">
                <g:message code="personaFisica.nombres.label" default="Nombres" />

            </label>
            <g:if test="${movimientoInstance?.receptor?.nombres}">
                <g:textField name="nombres" required="" value="${movimientoInstance?.receptor?.nombres}" size="25" style="text-align:center"/>
            </g:if>
            <g:else>
                <font color="ORANGE"> No hay datos en el archivo XML</font>
            </g:else>
        </td>

        <td>
            <label for="apellidoPaterno">
                <g:message code="personaFisica.apellidoPaterno.label" default="Apellido Paterno" />

            </label>
            <g:if test="${movimientoInstance?.receptor?.apellidoPaterno}">
                <g:textField name="apellidoPaterno" required="" value="${movimientoInstance?.receptor?.apellidoPaterno}" size="20" style="text-align:center"/>
            </g:if>
            <g:else>
                <font color="ORANGE"> No hay datos en el archivo XML</font>
            </g:else>
        </td>

        <td>
            <label for="apellidoMaterno">
                <g:message code="personaFisica.apellidoMaterno.label" default="Apellido Materno" />

            </label>
            <g:if test="${movimientoInstance?.receptor?.apellidoMaterno}">
                <g:textField name="apellidoMaterno" required="" value="${movimientoInstance?.receptor?.apellidoMaterno}" size="20" style="text-align:center"/>
            </g:if>
            <g:else>
                <font color="ORANGE"> No hay datos en el archivo XML</font>
            </g:else>  
        </td>
    </g:if>
    <g:if test="${movimientoInstance?.receptor instanceof PersonaMoral}">
        <td colspan="2">
            <label for="denominacionSocial">
                <g:message code="personaMoral.denominacionSocial.label" default="Denominacion Social" />

            </label>
            <g:if test="${movimientoInstance?.receptor?.denominacionSocial}">
                <g:textField name="denominacionSocial" required="" value="${movimientoInstance?.receptor?.denominacionSocial}" size="25" style="text-align:center"/>
            </g:if>
            <g:else>
                <font color="ORANGE"> No hay datos en el archivo XML</font>
            </g:else>
        </td>

        <td>
            <label for="nombreComercial">
                <g:message code="personaMoral.nombreComercial.label" default="Nombre Comercial" />

            </label>
            <g:if test="${movimientoInstance?.receptor?.nombreComercial}">
                <g:textField name="nombreComercial" required="" value="${movimientoInstance?.receptor?.nombreComercial}" size="25" style="text-align:center"/>
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

        </label>
        <g:if test="${movimientoInstance?.receptor?.calleFiscal}">
            <g:textField name="calleFiscal" required="" value="${movimientoInstance?.receptor?.calleFiscal}" size="30" style="text-align:center"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </td>
    <td>
        <label for="numeroExteriorFiscal">
            <g:message code="personaFisica.numeroExteriorFiscal.label" default="No Exterior" />

        </label>
        <g:if test="${movimientoInstance?.receptor?.numeroExteriorFiscal}">
            <g:textField name="numeroExteriorFiscal" required="" value="${movimientoInstance?.receptor?.numeroExteriorFiscal}" size="5" style="text-align:center"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </td>
    <td>
        <label for="numeroInteriorFiscal">
            <g:message code="personaFisica.numeroInteriorFiscal.label" default="No. Interior" />

        </label>
        <g:if test="${movimientoInstance?.receptor?.numeroInteriorFiscal}">
            <g:textField name="numeroInteriorFiscal" required="" value="${movimientoInstance?.receptor?.numeroInteriorFiscal}" size="10" style="text-align:center"/>
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

        </label>
        <g:if test="${movimientoInstance?.receptor?.coloniaFiscal}">
            <g:textField name="coloniaFiscal" required="" value="${movimientoInstance?.receptor?.coloniaFiscal}" size="20" style="text-align:center"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else> 
    </td>
    <td>
        <label for="localidadFiscal">
            <g:message code="personaFisica.localidadFiscal.label" default="Localidad" />

        </label>
        <g:if test="${movimientoInstance?.receptor?.localidadFiscal}">
            <g:textField name="localidadFiscal" required="" value="${movimientoInstance?.receptor?.localidadFiscal}" size="27" style="text-align:center"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </td>
    <td>
        <label for="delegacionOMunicipioFiscal">
            <g:message code="personaFisica.delegacionOMunicipioFiscal.label" default="Municipio" />

        </label>
        <g:if test="${movimientoInstance?.receptor?.delegacionOMunicipioFiscal}">
            <g:textField name="delegacionOMunicipioFiscal" required="" value="${movimientoInstance?.receptor?.delegacionOMunicipioFiscal}" size="27" style="text-align:center"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </td>
</tr>
<tr>
    <td>
        <label for="codigoPostalFiscal">
            <g:message code="personaFisica.codigoPostalFiscal.label" default="Código Postal" />

        </label>
        <g:if test="${movimientoInstance?.receptor?.codigoPostalFiscal}">
            <g:textField name="codigoPostalFiscal" required="" value="${movimientoInstance?.receptor?.codigoPostalFiscal}" size="6" style="text-align:center"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </td>
    <td>
        <label for="estadoFiscal">
            <g:message code="personaFisica.estadoFiscal.label" default="Estado" />

        </label>
        <g:if test="${movimientoInstance?.receptor?.estadoFiscal?.nombre}">
            <g:textField id="estadoFiscal" name="estadoFiscal" required="" value="${movimientoInstance?.receptor?.estadoFiscal?.nombre}" size="18" style="text-align:center"/>        
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </td>
    <td>
        <label for="paisFiscal">
            <g:message code="personaFisica.paisFiscal.label" default="País" />

        </label>
        <g:if test="${movimientoInstance?.receptor?.paisFiscal?.nombre}">
            <g:textField id="paisFiscal" name="paisFiscal" required="" value="${movimientoInstance?.receptor?.paisFiscal?.nombre}" size="8" style="text-align:center"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </td>
</tr>
<tr>
    <td>
        <label for="telefono">
            <g:message code="personaFisica.telefono.label" default="Teléfono" />

        </label>
        <g:if test="${movimientoInstance?.receptor?.telefono}">
            <g:textField name="telefono" required="" value="${movimientoInstance?.receptor?.telefono}" size="13" style="text-align:center"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </td>
    <td>
        <label for="email">
            <g:message code="personaFisica.email.label" default="Email" />

        </label>
        <g:if test="${movimientoInstance?.receptor?.email}">
            <g:field type="email" name="email" required="" value="${movimientoInstance?.receptor?.email}" size="15" style="text-align:center"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </td>
    <td>
        <label for="regimenFiscal">
            <g:message code="personaFisica.regimenFiscal.label" default="Régimen Fiscal" />

        </label>
        <g:if test="${movimientoInstance?.receptor?.regimenFiscal}">
            <g:textField name="regimenFiscal" required="" value="${movimientoInstance?.receptor?.regimenFiscal}" size="50" style="text-align:center"/>
        </g:if>
        <g:else>
            <font color="ORANGE"> No hay datos en el archivo XML</font>
        </g:else>
    </td>
</tr>
</body>
</table>


