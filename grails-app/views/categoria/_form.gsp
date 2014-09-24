<%@ page import="com.contabilizando.Categoria" %>



<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'nombreDeCategoria', 'error')} ">
	<label for="nombreDeCategoria">
		<g:message code="categoria.nombreDeCategoria.label" default="Nombre De Categoria" />
		
	</label>
	<g:select name="nombreDeCategoria" from="${categoriaInstance.constraints.nombreDeCategoria.inList}" value="${categoriaInstance?.nombreDeCategoria}" valueMessagePrefix="categoria.nombreDeCategoria" noSelection="['': '']"/>

</div>

