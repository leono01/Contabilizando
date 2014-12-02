package com.contabilizando.catalogos



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ConceptoGastoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ConceptoGasto.list(params), model:[conceptoGastoInstanceCount: ConceptoGasto.count()]
    }

    def show(ConceptoGasto conceptoGastoInstance) {
        respond conceptoGastoInstance
    }

    def create() {
        respond new ConceptoGasto(params)
    }

    @Transactional
    def save(ConceptoGasto conceptoGastoInstance) {
        if (conceptoGastoInstance == null) {
            notFound()
            return
        }

        if (conceptoGastoInstance.hasErrors()) {
            respond conceptoGastoInstance.errors, view:'create'
            return
        }

        conceptoGastoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'conceptoGasto.label', default: 'ConceptoGasto'), conceptoGastoInstance.id])
                redirect conceptoGastoInstance
            }
            '*' { respond conceptoGastoInstance, [status: CREATED] }
        }
    }

    def edit(ConceptoGasto conceptoGastoInstance) {
        respond conceptoGastoInstance
    }

    @Transactional
    def update(ConceptoGasto conceptoGastoInstance) {
        if (conceptoGastoInstance == null) {
            notFound()
            return
        }

        if (conceptoGastoInstance.hasErrors()) {
            respond conceptoGastoInstance.errors, view:'edit'
            return
        }

        conceptoGastoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ConceptoGasto.label', default: 'ConceptoGasto'), conceptoGastoInstance.id])
                redirect conceptoGastoInstance
            }
            '*'{ respond conceptoGastoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ConceptoGasto conceptoGastoInstance) {

        if (conceptoGastoInstance == null) {
            notFound()
            return
        }

        conceptoGastoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ConceptoGasto.label', default: 'ConceptoGasto'), conceptoGastoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'conceptoGasto.label', default: 'ConceptoGasto'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
