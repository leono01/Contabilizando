<%@ page import="com.contabilizando.catalogos.ConfiguracionEmpresa" %>



<div class="fieldcontain ${hasErrors(bean: configuracionEmpresaInstance, field: 'nombreDeEmpresa', 'error')} required">
	<label for="nombreDeEmpresa">
		<g:message code="configuracionEmpresa.nombreDeEmpresa.label" default="Nombre De Empresa" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreDeEmpresa" required="" value="${configuracionEmpresaInstance?.nombreDeEmpresa}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: configuracionEmpresaInstance, field: 'nombreDeLogo', 'error')} ">
	<label for="nombreDeLogo">
		<g:message code="configuracionEmpresa.nombreDeLogo.label" default="Nombre De Logo" />
		
	</label>
	<g:textArea name="nombreDeLogo" cols="40" rows="5" maxlength="1000" value="${configuracionEmpresaInstance?.nombreDeLogo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: configuracionEmpresaInstance, field: 'logo', 'error')} ">
	<label for="logo">
		<g:message code="configuracionEmpresa.logo.label" default="Logo" />
		
	</label>
	<input type="file" id="logo" name="logo" />

</div>

<div class="fieldcontain ${hasErrors(bean: configuracionEmpresaInstance, field: 'domicilio', 'error')} required">
	<label for="domicilio">
		<g:message code="configuracionEmpresa.domicilio.label" default="Domicilio" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="domicilio" required="" value="${configuracionEmpresaInstance?.domicilio}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: configuracionEmpresaInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="configuracionEmpresa.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${configuracionEmpresaInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: configuracionEmpresaInstance, field: 'estado', 'error')} ">
	<label for="estado">
		<g:message code="configuracionEmpresa.estado.label" default="Estado" />
		
	</label>
	<g:select id="estado" name="estado.id" from="${com.contabilizando.catalogos.Estado.list()}" optionKey="id" value="${configuracionEmpresaInstance?.estado?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: configuracionEmpresaInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="configuracionEmpresa.telefono.label" default="Telefono" />
		
	</label>
	<g:textField name="telefono" value="${configuracionEmpresaInstance?.telefono}"/>

</div>

