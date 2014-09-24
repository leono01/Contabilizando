<%@ page import="com.contabilizando.Movimiento" %>
<%@ page import="com.contabilizando.PersonaFisica" %>
<%@ page import="com.contabilizando.PersonaMoral" %>
<%@ page import="com.contabilizando.TipoDeOperacion" %>

<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'movimiento.label', default: 'Movimiento')}" />
        <title>Guardar datos CFDI</title>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">                    
                    <div class="panel panel-default">                        
                        <div class="panel-heading" style="text-align:center">                            
                            <h3>Ingresos de la empresa</h3>
                        </div><!-- End .panel-heading -->                       
                    </div>
                    <g:render template="/shared/alerts" />
                    </br>
                    </br>
                    <div class="col-lg-8">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="icon"><i class="icon20 i-address-book-2"></i></div> 
                                <h4>Datos del comprobante CFDI</h4>
                                <a href="#" class="minimize"></a>
                            </div><!-- End .panel-heading -->
                            <div class="panel-body ">
                                <g:form name="datos" controller="movimiento" action="guardarIngreso">
                                    <g:render template="cfdiView"/>
                                    </br>
                                    <div style="text-align:center">
                                        
                                        <%--<g:hiddenField name="comprobante" value="${movimientoInstance?.id}"/>--%>
                                        <g:submitButton class="btn btn-success" name="guardarDatos" value="Guardar Comprobante"/>
                                    </div>
                                </g:form>
                            </div> <!--End .panel-body -->
                        </div><!-- End .widget -->
                    </div><!-- End .col-lg-6  -->
                </div>
            </div>
        </div>     
    </body>
</html>
