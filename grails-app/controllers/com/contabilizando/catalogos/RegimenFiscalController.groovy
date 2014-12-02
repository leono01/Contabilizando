package com.contabilizando.catalogos



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RegimenFiscalController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond RegimenFiscal.list(params), model:[regimenFiscalInstanceCount: RegimenFiscal.count()]
    }

    def show(RegimenFiscal regimenFiscalInstance) {
        respond regimenFiscalInstance
    }

    def create() {
        respond new RegimenFiscal(params)
    }

    @Transactional
    def save(RegimenFiscal regimenFiscalInstance) {
        if (regimenFiscalInstance == null) {
            notFound()
            return
        }

        if (regimenFiscalInstance.hasErrors()) {
            respond regimenFiscalInstance.errors, view:'create'
            return
        }

        regimenFiscalInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'regimenFiscal.label', default: 'RegimenFiscal'), regimenFiscalInstance.id])
                redirect regimenFiscalInstance
            }
            '*' { respond regimenFiscalInstance, [status: CREATED] }
        }
    }

    def edit(RegimenFiscal regimenFiscalInstance) {
        respond regimenFiscalInstance
    }

    @Transactional
    def update(RegimenFiscal regimenFiscalInstance) {
        if (regimenFiscalInstance == null) {
            notFound()
            return
        }

        if (regimenFiscalInstance.hasErrors()) {
            respond regimenFiscalInstance.errors, view:'edit'
            return
        }

        regimenFiscalInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'RegimenFiscal.label', default: 'RegimenFiscal'), regimenFiscalInstance.id])
                redirect regimenFiscalInstance
            }
            '*'{ respond regimenFiscalInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(RegimenFiscal regimenFiscalInstance) {

        if (regimenFiscalInstance == null) {
            notFound()
            return
        }

        regimenFiscalInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'RegimenFiscal.label', default: 'RegimenFiscal'), regimenFiscalInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'regimenFiscal.label', default: 'RegimenFiscal'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
