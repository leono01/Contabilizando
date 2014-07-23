<g:if test='${flash.message}'>
    <div class="alert alert-success">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <strong><i class="icon24 i-checkmark-circle"></i> ${flash.message} </strong>
    </div>
</g:if>
<g:if test='${flash.warn}'>
    <div class="alert">
        <button class="close" data-dismiss="alert">×</button>
        <strong><i class="icon24 i-warning"></i> ${flash.warn} </strong>
    </div>
</g:if>
<g:if test='${flash.info}'>
    <div class="alert alert-info">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <strong><i class="icon24 i-info"></i> ${flash.info} </strong>
    </div>
</g:if>
<g:if test='${flash.error}'>
    <div class="alert alert-error">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <strong><i class="icon24 i-close-4"> ${flash.error} </i> </strong>
    </div>
</g:if>
