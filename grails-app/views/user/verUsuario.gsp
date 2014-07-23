<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <title>Perfil</title>
    </head>
    <body> 
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">                    
                    <div class="panel panel-default">                        
                        <div class="panel-heading">
                            <div class="icon"><i class="icon20 i-profile"></i></div> 
                            <h4>Perfil</h4>                        
                        </div><!-- End .panel-heading -->                       
                    </div>
                    </br>
                    </br>
                    <g:render template="/shared/alerts" />
                    <div class="col-lg-8">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="icon"><i class="icon20 i-address-book-2"></i></div> 
                                <h4>Información de Perfil</h4>
                                <a href="#" class="minimize"></a>
                                
                            </div><!-- End .panel-heading -->
                            <div class="panel-body ">
                                <div class="chat-layout">
                                    <div class="panel-body">
                                        <div class="toDo">
                                            <g:if test="${usuario.foto}">
                                                <g:link controller="imagen" action="mostrar" id="${usuario.id}">
                                                    <img width="30%" height="30%" src="http://localhost:8080/Contabilizando/imagen/mostrar/${usuario.id}">
                                                </g:link>
                                            </g:if> 
                                            
                                            <g:if test="${usuario?.username}">
                                                <h4 class="period"><span id="nombreDeusuario-label" class="property-label">Nombre de usuario:</span></h4>                                
                                                <ul class="todo-list" id="today">
                                                    <li class="task-item clearfix">                                        
                                                        <span class="priority tip"><i class="icon12 i-circle-2"></i></span>                                        
                                                        <span class="task">
                                                            <span class="property-value" aria-labelledby="username-label">${usuario.username}</span>
                                                        </span>                                            
                                                    </li>
                                                </ul>
                                            </g:if>
                                            <g:if test="${usuario?.password}">
                                                <h4 class="period"><span id="password-label" class="property-label">Contraseña:</span></h4>                                
                                                <ul class="todo-list" id="today">
                                                    <li class="task-item clearfix">                                            
                                                        <span class="priority tip"><i class="icon12 i-circle-2"></i></span>                                            
                                                        <span class="task">
                                                            <span class="property-value" aria-labelledby="password-label">${usuario.password}</span>
                                                        </span>                                            
                                                    </li>
                                                </ul>
                                            </g:if>
                                            <g:if test="${usuario?.firstName}">
                                                <h4 class="period"><span id="domicilio-label" class="property-label">Nombre(s):</span></h4>                                
                                                <ul class="todo-list" id="today">
                                                    <li class="task-item clearfix">                                            
                                                        <span class="priority tip"><i class="icon12 i-circle-2"></i></span>                                            
                                                        <span class="task">
                                                            <span class="property-value" aria-labelledby="firstName-label">${usuario.firstName}</span>
                                                        </span>                                            
                                                    </li>
                                                </ul>
                                            </g:if>
                                            <g:if test="${usuario?.lastName}">
                                                <h4 class="period"><span id="domicilio-label" class="property-label">Apellidos:</span></h4>                                
                                                <ul class="todo-list" id="today">
                                                    <li class="task-item clearfix">                                            
                                                        <span class="priority tip"><i class="icon12 i-circle-2"></i></span>                                            
                                                        <span class="task">
                                                            <span class="property-value" aria-labelledby="lastName-label">${usuario.lastName}</span>
                                                        </span>                                            
                                                    </li>
                                                </ul>
                                            </g:if>
                                            <g:if test="${usuario?.email}">
                                                <h4 class="period"><span id="email-label" class="property-label">Correo Electrónico</span></h4>                                
                                                <ul class="todo-list" id="today">
                                                    <li class="task-item clearfix">                                            
                                                        <span class="priority tip"><i class="icon12 i-circle-2"></i></span>                                            
                                                        <span class="task">
                                                            <span class="property-value" aria-labelledby="email-label">${usuario.email}</span>
                                                        </span>                                            
                                                    </li>
                                                </ul>
                                            </g:if>
                                        </div>
                                    </div>
                                    <div class="panel-heading">
    
                                    <g:link class="btn btn-warning" controller="user" action="edit" id="${usuario.id}">
                                        <i class="icon16 i-pencil-5"></i> Editar
                                    </g:link>                                            
                                           
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
