package com.contabilizando



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TipoDeOperacionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TipoDeOperacion.list(params), model:[tipoDeOperacionInstanceCount: TipoDeOperacion.count()]
    }

    def show(TipoDeOperacion tipoDeOperacionInstance) {
        respond tipoDeOperacionInstance
    }

    def create() {
        respond new TipoDeOperacion(params)
    }

    @Transactional
    def save(TipoDeOperacion tipoDeOperacionInstance) {
        if (tipoDeOperacionInstance == null) {
            notFound()
            return
        }

        if (tipoDeOperacionInstance.hasErrors()) {
            respond tipoDeOperacionInstance.errors, view:'create'
            return
        }

        tipoDeOperacionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tipoDeOperacion.label', default: 'TipoDeOperacion'), tipoDeOperacionInstance.id])
                redirect tipoDeOperacionInstance
            }
            '*' { respond tipoDeOperacionInstance, [status: CREATED] }
        }
    }

    def edit(TipoDeOperacion tipoDeOperacionInstance) {
        respond tipoDeOperacionInstance
    }

    @Transactional
    def update(TipoDeOperacion tipoDeOperacionInstance) {
        if (tipoDeOperacionInstance == null) {
            notFound()
            return
        }

        if (tipoDeOperacionInstance.hasErrors()) {
            respond tipoDeOperacionInstance.errors, view:'edit'
            return
        }

        tipoDeOperacionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TipoDeOperacion.label', default: 'TipoDeOperacion'), tipoDeOperacionInstance.id])
                redirect tipoDeOperacionInstance
            }
            '*'{ respond tipoDeOperacionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TipoDeOperacion tipoDeOperacionInstance) {

        if (tipoDeOperacionInstance == null) {
            notFound()
            return
        }

        tipoDeOperacionInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TipoDeOperacion.label', default: 'TipoDeOperacion'), tipoDeOperacionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoDeOperacion.label', default: 'TipoDeOperacion'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
