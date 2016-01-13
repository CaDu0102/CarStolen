package carstolen

class Dono {

    String nomeCompleto
    String cpf
    String email
    String telefoneFixo
    String telefoneMovel
    String cnh

                //Relaçao de 1 pra N de Dono - Carro
        static hasMany = [carros:Carro] //One-to-Many

    static constraints = {

         nomeCompleto   maxSize:255, blank: false, nullable: false
         cpf            maxSize:11, blank: false, nullable: false
         email          maxSize:150, blank: false, nullable: false
         telefoneFixo   maxSize:10, blank: false, nullable: false
         telefoneMovel  maxSize:11, blank: false, nullable: false
         cnh            maxSize:11, blank: false, nullable: false

    }
}
