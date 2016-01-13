import carstolen.Policial

class BootStrap {

    def init = { servletContext ->

        //Criação de um Policial
        def policial2 = new Policial(nomeCompleto: 'Carlos Cesar',usuario: 'z',senha:'1',cargo: 'Coronel')
        // policial.senha = policial.senha.encodeAsMD5()
        policial2.save(flush: true)

        //Criação de um Dono
        //def dono = new Dono(nomeCompleto:'Maria dos Santos',cpf: '12332133123',email:'maria@gmail.com',telefoneFixo:'2137319989',telefoneMovel:'2199878325476' ,cnh:'32343167689')
        //dono.save(flush: true)

        //Criação de um Carro
        //def carro = new Carro(corPrediminante:'Preto' ,letraPlaca:'DEC',numeroPlaca:0200, chassi:'12345543210987654', marca:'Nissan',modelo:'March' )
        //carro.save(flush: true)

    }

    def destroy = {
    }
}
