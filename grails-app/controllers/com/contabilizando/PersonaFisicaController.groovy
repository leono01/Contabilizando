package com.contabilizando



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PersonaFisicaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PersonaFisica.list(params), model:[personaFisicaInstanceCount: PersonaFisica.count()]
    }

    def show(PersonaFisica personaFisicaInstance) {
        respond personaFisicaInstance
    }

    def create() {
        respond new PersonaFisica(params)
    }

    @Transactional
    def save(PersonaFisica personaFisicaInstance) {
        if (personaFisicaInstance == null) {
            notFound()
            return
        }

        if (personaFisicaInstance.hasErrors()) {
            respond personaFisicaInstance.errors, view:'create'
            return
        }

        personaFisicaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'personaFisica.label', default: 'PersonaFisica'), personaFisicaInstance.id])
                redirect personaFisicaInstance
            }
            '*' { respond personaFisicaInstance, [status: CREATED] }
        }
    }

    def edit(PersonaFisica personaFisicaInstance) {
        respond personaFisicaInstance
    }

    @Transactional
    def update(PersonaFisica personaFisicaInstance) {
        if (personaFisicaInstance == null) {
            notFound()
            return
        }

        if (personaFisicaInstance.hasErrors()) {
            respond personaFisicaInstance.errors, view:'edit'
            return
        }

        personaFisicaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PersonaFisica.label', default: 'PersonaFisica'), personaFisicaInstance.id])
                redirect personaFisicaInstance
            }
            '*'{ respond personaFisicaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PersonaFisica personaFisicaInstance) {

        if (personaFisicaInstance == null) {
            notFound()
            return
        }

        personaFisicaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PersonaFisica.label', default: 'PersonaFisica'), personaFisicaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'personaFisica.label', default: 'PersonaFisica'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
