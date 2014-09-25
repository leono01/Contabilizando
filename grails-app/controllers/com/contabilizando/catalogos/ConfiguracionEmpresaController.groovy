package com.contabilizando.catalogos



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ConfiguracionEmpresaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ConfiguracionEmpresa.list(params), model:[configuracionEmpresaInstanceCount: ConfiguracionEmpresa.count()]
    }

    def show(ConfiguracionEmpresa configuracionEmpresaInstance) {
        respond configuracionEmpresaInstance
    }

    def create() {
        respond new ConfiguracionEmpresa(params)
    }

    @Transactional
    def save(ConfiguracionEmpresa configuracionEmpresaInstance) {
        if (configuracionEmpresaInstance == null) {
            notFound()
            return
        }

        if (configuracionEmpresaInstance.hasErrors()) {
            respond configuracionEmpresaInstance.errors, view:'create'
            return
        }

        configuracionEmpresaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'configuracionEmpresa.label', default: 'ConfiguracionEmpresa'), configuracionEmpresaInstance.id])
                redirect configuracionEmpresaInstance
            }
            '*' { respond configuracionEmpresaInstance, [status: CREATED] }
        }
    }

    def edit(ConfiguracionEmpresa configuracionEmpresaInstance) {
        respond configuracionEmpresaInstance
    }

    @Transactional
    def update(ConfiguracionEmpresa configuracionEmpresaInstance) {
        if (configuracionEmpresaInstance == null) {
            notFound()
            return
        }

        if (configuracionEmpresaInstance.hasErrors()) {
            respond configuracionEmpresaInstance.errors, view:'edit'
            return
        }

        configuracionEmpresaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ConfiguracionEmpresa.label', default: 'ConfiguracionEmpresa'), configuracionEmpresaInstance.id])
                redirect configuracionEmpresaInstance
            }
            '*'{ respond configuracionEmpresaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ConfiguracionEmpresa configuracionEmpresaInstance) {

        if (configuracionEmpresaInstance == null) {
            notFound()
            return
        }

        configuracionEmpresaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ConfiguracionEmpresa.label', default: 'ConfiguracionEmpresa'), configuracionEmpresaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'configuracionEmpresa.label', default: 'ConfiguracionEmpresa'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
    
    def getExtensionList () {
        def extensiones = []
        extensiones << "jpeg"
        extensiones << "jpg"
        extensiones << "png"
        extensiones << "bmp"
        extensiones
    }
     
    def showImage () {        
        def empresaInstance = ConfiguracionEmpresa.get( params.id )
        response.outputStream << empresaInstance.logo
        response.outputStream.flush()
    }
     
    @Transactional
    def uploadLogo () {
        flash.message = null        
        def configuracionEmpresaInstance = ConfiguracionEmpresa.get(params.id as long)        
        def f = request.getFile('logo')
        if (f.getSize() == 0) {
            flash.warn = "Debe indicar la ruta de la imagen."
        } else if (f.getSize() >= 5242880) {
            flash.warn = "El archivo debe pesar menos de 5 Mb."
        } else {            
            def filename = f.getOriginalFilename() 
            def extension = filename.substring(filename.lastIndexOf(".") + 1, filename.size()).toLowerCase()
            def extensionList = getExtensionList()
            if (extensionList.contains(extension)) {                
                configuracionEmpresaInstance.nombreDeLogo = filename
                configuracionEmpresaInstance.logo = f.getBytes()
                if (configuracionEmpresaInstance.save(flash:true)) {
                    flash.message = "La imágen de tu logo se guardo correctamente."
                } else {
                    flash.error = "Error en base de datos."
                }
            } else {
                flash.warn = "El archivo debe tener alguna de las siguientes extensiones: jpeg, jpg, png, bmp."
            }            
        }
        request.withFormat {
            form multipartForm {                
                redirect configuracionEmpresaInstance
            }
             '*'{ respond configuracionEmpresaInstance, [status: OK] }
        }
    }
    
}
