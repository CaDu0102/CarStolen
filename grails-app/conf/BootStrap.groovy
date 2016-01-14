import carstolen.Carro
import carstolen.Dono
import carstolen.Policial
import carstolen.Carro
import carstolen.Dono

class BootStrap {

    def init = { servletContext ->

        //Criação de um Policial
        def policial2 = new Policial(nomeCompleto: 'Carlos Cesar Duarte',usuario: 'z',senha:'1',cargo: 'Coronel')
        // policial.senha = policial.senha.encodeAsMD5()
        policial2.save(flush: true)

        //Criação de um Dono
        def dono = new Dono(nomeCompleto:'Maria dos Santos',cpf: '321',email:'mariagmail.com',telefoneFixo:'444',telefoneMovel:'444' ,cnh:'323')
        dono.save(flush: true)

        def donor = new Dono(nomeCompleto:'José de Solza',cpf: '123',email:'josegmail.com',telefoneFixo:'213',telefoneMovel:'555' ,cnh:'222')
        donor.save(flush: true)

        //Criação de um Carro
        def carro = new Carro(corPrediminante:'Preto' ,letraPlaca:'DEC',numeroPlaca:0200, chassi:'12345543210987654',combustivel:'Gasolina', marca:'Nissan',modelo:'March',categoria:'Particular',anoFrabricacao:new Date())
        carro.save(flush: true)

        def carroe = new Carro(corPrediminante:'Branco' ,letraPlaca:'CED',numeroPlaca:4400, chassi:'09876543219876543',combustivel:'Gasolina', marca:'Toyota',modelo:'HB20',categoria:'Particular',anoFrabricacao:new Date())
        carroe.save(flush: true)


    }

    def destroy = {
    }
}
