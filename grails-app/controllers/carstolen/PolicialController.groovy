package carstolen



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional




@Transactional(readOnly = true)
class PolicialController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Policial.list(params), model:[policialInstanceCount: Policial.count()]
    }

    def show(Policial policialInstance) {
        respond policialInstance
    }

    def create() {
        respond new Policial(params)
    }

//pagina que chama o logar
    def paginaLogin(){
        render(view: 'logar')

    }

// Controle de Logar
    def logar(Policial usuarioInstance){

        // Logando com  criptografia MD5 na senha
        def policial = Policial.findByUsuarioAndSenha(usuarioInstance.usuario,usuarioInstance.senha/*.encodeAsMD5()*/)

            if(policial){
                session.policial = policial // abrindo sessao quando o usuario consegue logar
                render(view: '/index')    //consegue ir para index
            }else {
                flash.error = "Senha / Usuário são imcompatíveis ou invalidas"
                render(view: 'logar')     //volta para a mesma paginda de logar (mudado)
            }
    }





//Encerra a sessão
    def sair(){
        session.policial = null
        //  render(view: 'logar')         //Mostra a paginda de logar novamente
        redirect(action: 'paginaLogin')
        //render(view: 'index')
    }


    @Transactional
    def save(Policial policialInstance) {
        if (policialInstance == null) {
            notFound()
            return
        }

        if (policialInstance.hasErrors()) {
            respond policialInstance.errors, view:'create'
            return
        }

        policialInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'policial.label', default: 'Policial'), policialInstance.id])
                redirect policialInstance
            }
            '*' { respond policialInstance, [status: CREATED] }
        }
    }

    def edit(Policial policialInstance) {
        respond policialInstance
    }

    @Transactional
    def update(Policial policialInstance) {
        if (policialInstance == null) {
            notFound()
            return
        }

        if (policialInstance.hasErrors()) {
            respond policialInstance.errors, view:'edit'
            return
        }

        policialInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Policial.label', default: 'Policial'), policialInstance.id])
                redirect policialInstance
            }
            '*'{ respond policialInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Policial policialInstance) {

        if (policialInstance == null) {
            notFound()
            return
        }

        policialInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Policial.label', default: 'Policial'), policialInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'policial.label', default: 'Policial'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
