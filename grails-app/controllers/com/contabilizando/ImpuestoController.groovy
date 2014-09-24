package com.contabilizando



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ImpuestoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Impuesto.list(params), model:[impuestoInstanceCount: Impuesto.count()]
    }

    def show(Impuesto impuestoInstance) {
        respond impuestoInstance
    }

    def create() {
        respond new Impuesto(params)
    }

    @Transactional
    def save(Impuesto impuestoInstance) {
        if (impuestoInstance == null) {
            notFound()
            return
        }

        if (impuestoInstance.hasErrors()) {
            respond impuestoInstance.errors, view:'create'
            return
        }

        impuestoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'impuesto.label', default: 'Impuesto'), impuestoInstance.id])
                redirect impuestoInstance
            }
            '*' { respond impuestoInstance, [status: CREATED] }
        }
    }

    def edit(Impuesto impuestoInstance) {
        respond impuestoInstance
    }

    @Transactional
    def update(Impuesto impuestoInstance) {
        if (impuestoInstance == null) {
            notFound()
            return
        }

        if (impuestoInstance.hasErrors()) {
            respond impuestoInstance.errors, view:'edit'
            return
        }

        impuestoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Impuesto.label', default: 'Impuesto'), impuestoInstance.id])
                redirect impuestoInstance
            }
            '*'{ respond impuestoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Impuesto impuestoInstance) {

        if (impuestoInstance == null) {
            notFound()
            return
        }

        impuestoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Impuesto.label', default: 'Impuesto'), impuestoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'impuesto.label', default: 'Impuesto'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
