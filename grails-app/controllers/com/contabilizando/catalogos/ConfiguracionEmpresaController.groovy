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
}
