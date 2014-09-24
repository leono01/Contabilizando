package com.contabilizando



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PersonaMoralController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PersonaMoral.list(params), model:[personaMoralInstanceCount: PersonaMoral.count()]
    }

    def show(PersonaMoral personaMoralInstance) {
        respond personaMoralInstance
    }

    def create() {
        respond new PersonaMoral(params)
    }

    @Transactional
    def save(PersonaMoral personaMoralInstance) {
        if (personaMoralInstance == null) {
            notFound()
            return
        }

        if (personaMoralInstance.hasErrors()) {
            respond personaMoralInstance.errors, view:'create'
            return
        }

        personaMoralInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'personaMoral.label', default: 'PersonaMoral'), personaMoralInstance.id])
                redirect personaMoralInstance
            }
            '*' { respond personaMoralInstance, [status: CREATED] }
        }
    }

    def edit(PersonaMoral personaMoralInstance) {
        respond personaMoralInstance
    }

    @Transactional
    def update(PersonaMoral personaMoralInstance) {
        if (personaMoralInstance == null) {
            notFound()
            return
        }

        if (personaMoralInstance.hasErrors()) {
            respond personaMoralInstance.errors, view:'edit'
            return
        }

        personaMoralInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PersonaMoral.label', default: 'PersonaMoral'), personaMoralInstance.id])
                redirect personaMoralInstance
            }
            '*'{ respond personaMoralInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PersonaMoral personaMoralInstance) {

        if (personaMoralInstance == null) {
            notFound()
            return
        }

        personaMoralInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PersonaMoral.label', default: 'PersonaMoral'), personaMoralInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'personaMoral.label', default: 'PersonaMoral'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
