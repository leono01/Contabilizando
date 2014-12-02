package com.contabilizando.catalogos



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ConceptoIngresoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ConceptoIngreso.list(params), model:[conceptoIngresoInstanceCount: ConceptoIngreso.count()]
    }

    def show(ConceptoIngreso conceptoIngresoInstance) {
        respond conceptoIngresoInstance
    }

    def create() {
        respond new ConceptoIngreso(params)
    }

    @Transactional
    def save(ConceptoIngreso conceptoIngresoInstance) {
        if (conceptoIngresoInstance == null) {
            notFound()
            return
        }

        if (conceptoIngresoInstance.hasErrors()) {
            respond conceptoIngresoInstance.errors, view:'create'
            return
        }

        conceptoIngresoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'conceptoIngreso.label', default: 'ConceptoIngreso'), conceptoIngresoInstance.id])
                redirect conceptoIngresoInstance
            }
            '*' { respond conceptoIngresoInstance, [status: CREATED] }
        }
    }

    def edit(ConceptoIngreso conceptoIngresoInstance) {
        respond conceptoIngresoInstance
    }

    @Transactional
    def update(ConceptoIngreso conceptoIngresoInstance) {
        if (conceptoIngresoInstance == null) {
            notFound()
            return
        }

        if (conceptoIngresoInstance.hasErrors()) {
            respond conceptoIngresoInstance.errors, view:'edit'
            return
        }

        conceptoIngresoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ConceptoIngreso.label', default: 'ConceptoIngreso'), conceptoIngresoInstance.id])
                redirect conceptoIngresoInstance
            }
            '*'{ respond conceptoIngresoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ConceptoIngreso conceptoIngresoInstance) {

        if (conceptoIngresoInstance == null) {
            notFound()
            return
        }

        conceptoIngresoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ConceptoIngreso.label', default: 'ConceptoIngreso'), conceptoIngresoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'conceptoIngreso.label', default: 'ConceptoIngreso'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
