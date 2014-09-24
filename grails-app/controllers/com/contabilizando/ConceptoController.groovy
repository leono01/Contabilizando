package com.contabilizando



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ConceptoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Concepto.list(params), model:[conceptoInstanceCount: Concepto.count()]
    }

    def show(Concepto conceptoInstance) {
        respond conceptoInstance
    }

    def create() {
        respond new Concepto(params)
    }

    @Transactional
    def save(Concepto conceptoInstance) {
        if (conceptoInstance == null) {
            notFound()
            return
        }

        if (conceptoInstance.hasErrors()) {
            respond conceptoInstance.errors, view:'create'
            return
        }

        conceptoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'concepto.label', default: 'Concepto'), conceptoInstance.id])
                redirect conceptoInstance
            }
            '*' { respond conceptoInstance, [status: CREATED] }
        }
    }

    def edit(Concepto conceptoInstance) {
        respond conceptoInstance
    }

    @Transactional
    def update(Concepto conceptoInstance) {
        if (conceptoInstance == null) {
            notFound()
            return
        }

        if (conceptoInstance.hasErrors()) {
            respond conceptoInstance.errors, view:'edit'
            return
        }

        conceptoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Concepto.label', default: 'Concepto'), conceptoInstance.id])
                redirect conceptoInstance
            }
            '*'{ respond conceptoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Concepto conceptoInstance) {

        if (conceptoInstance == null) {
            notFound()
            return
        }

        conceptoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Concepto.label', default: 'Concepto'), conceptoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'concepto.label', default: 'Concepto'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
