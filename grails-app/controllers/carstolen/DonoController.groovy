package carstolen



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DonoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Dono.list(params), model:[donoInstanceCount: Dono.count()]
    }

    def show(Dono donoInstance) {
        respond donoInstance
    }

    def create() {
        respond new Dono(params)
    }

    @Transactional
    def save(Dono donoInstance) {
        if (donoInstance == null) {
            notFound()
            return
        }

        if (donoInstance.hasErrors()) {
            respond donoInstance.errors, view:'create'
            return
        }

        donoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'dono.label', default: 'Dono'), donoInstance.id])
                redirect donoInstance
            }
            '*' { respond donoInstance, [status: CREATED] }
        }
    }

    def edit(Dono donoInstance) {
        respond donoInstance
    }

    @Transactional
    def update(Dono donoInstance) {
        if (donoInstance == null) {
            notFound()
            return
        }

        if (donoInstance.hasErrors()) {
            respond donoInstance.errors, view:'edit'
            return
        }

        donoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Dono.label', default: 'Dono'), donoInstance.id])
                redirect donoInstance
            }
            '*'{ respond donoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Dono donoInstance) {

        if (donoInstance == null) {
            notFound()
            return
        }

        donoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Dono.label', default: 'Dono'), donoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'dono.label', default: 'Dono'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
