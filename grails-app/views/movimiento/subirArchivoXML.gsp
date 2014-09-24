<%@ page import="com.contabilizando.Movimiento" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'movimiento.label', default: 'Movimiento')}" />
        <title>Datos del CFDI</title>
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

                    <div class="col-lg-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="icon"><i class="icon20 i-image-2"></i></div> 
                                <h4>Abrir archivo XML del comprobante CFDI</h4>
                                <a href="#" class="minimize"></a>
                            </div><!-- End .panel-heading -->

                            <div class="panel-body ">
                                <div class="chat-layout">
                                    <ul>
                                        <li class="clearfix leftside">
                                            <div class="well">
                                                <g:uploadForm name="abrirArchivoXML" controller="movimiento" action="abrirXML">
                                                    <input type="file" name="ingresoXML" />
                                                    <g:submitButton class="btn btn-warning" name="abrirXML" value="Abrir XML" />
                                                </g:uploadForm>
                                            </div>
                                        </li>
                                    </ul>                                   
                                </div>
                            </div><!-- End .panel-body -->
                        </div><!-- End .widget -->
                    </div><!-- End .col-lg-6  -->


                    <div class="col-lg-8">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="icon"><i class="icon20 i-address-book-2"></i></div> 
                                <h4>Llenar datos del comprobante CFDI manualmente</h4>
                                <a href="#" class="minimize"></a>
                            </div><!-- End .panel-heading -->
                            <div class="panel-body ">
                                <div class="chat-layout">
                                    <div class="panel-body">
                                        
                                            <g:form name="datos" controller="movimiento" action="guardarMovimiento">
                                                <g:render template="cfdiView2"/>
                                                </br>
                                                <div style="text-align:center">
                                                    <g:submitButton class="btn btn-success" name="guardarDatos" value="Guardar Comprobante"/>
                                                </div>
                                            </g:form>

                                    </div>
                                </div>
                            </div><!-- End .panel-body -->
                        </div><!-- End .widget -->
                    </div><!-- End .col-lg-6  -->

                </div>
            </div>
        </div>

    </body>
</html>