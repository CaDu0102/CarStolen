import carstolen.Carro
import carstolen.Dono
import carstolen.Policial
import carstolen.Carro
import carstolen.Dono

class BootStrap {

    def init = { servletContext ->

        //Criação de um Policial
        def policial2 = new Policial(nomeCompleto: 'Carlos Cesar',usuario: 'z',senha:'1',cargo: 'Coronel')
        // policial.senha = policial.senha.encodeAsMD5()
        policial2.save(flush: true)

        //Criação de um Dono
        def dono = new Dono(nomeCompleto:'Maria dos Santos',cpf: 'eqwe',email:'mariagmail.com',telefoneFixo:'eqwe',telefoneMovel:'ewqer' ,cnh:'eqwe')
        dono.save(flush: true)

        //Criação de um Carro
        def carro = new Carro(corPrediminante:'Preto' ,letraPlaca:'DEC',numeroPlaca:0200, chassi:'12345543210987654',combustivel:'Gasolina', marca:'Nissan',modelo:'March',categoria:'Particular')
        carro.save(flush: true)

    }

    def destroy = {
    }
}
