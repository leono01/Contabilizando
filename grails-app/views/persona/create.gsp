<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-persona" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                </ul>
            </div>
            <div id="create-persona" class="content scaffold-create" role="main">
                <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${personaInstance}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${personaInstance}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                </ul>
            </g:hasErrors>
            <g:form url="[resource:personaInstance, action:'save']" >
                <fieldset class="form">
                    <%--<g:render template="form"/>--%>
                    <g:render template="contribuyente"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>

        <script lang="javascript" type="text/javascript"> 
            function updateMunicipios(data) {
            var $element = $('#municipio');
            $element.empty();
            for (var x = 0; x < data.length; x++) {
            var option = $('<option/>').val(data[x].id).text(data[x].nombre);
            $element.append(option)
            }
            }

            function cleanMunicipios() 
            {
            var $element = $('#municipio');
            $element.empty();
        var option = $('<option/>').val('-1').text('');
            $element.append(option)
            }
        </script>
    </body>
</html>
