package carstolen

class Carro {

    String corPrediminante
    String letraPlaca
    int numeroPlaca
    String chassi
    Combustivel combustivel
    String marca
    String modelo
    Categoria categoria
    Date anoFrabricacao

                 //Relaçao de 1 pra N de Dono - Carro
        static belongsTo = Dono //One-to-Many

    static constraints = {

         corPrediminante    maxSize:20, blank: false, nullable: false
         letraPlaca         maxSize: 3, blank: false, nullable: false
         numeroPlaca        min:0, maxSize:4, blank: false, nullable: false
         chassi             maxSize: 17, blank: false, nullable: false
         marca              maxSize:20, blank: false, nullable: false
         modelo             maxSize:20, blank: false, nullable: false
       //categoria          maxSize:20, blank: false, nullable: false
         anoFrabricacao     maxSize:20, blank: false, nullable: false

    }
}
         enum Combustivel { // Tipos de Combustiveis

             Gasolina, Etanol,
             Disel, GNV

         }

         enum Categoria {// Tipos de Categoria

             Particular, AutoEscola, Oficial, Teste,
             Relacoes_Internacionais, Colecao,
             AutoridadesPoliticas, Concessionárias_Teste

         }