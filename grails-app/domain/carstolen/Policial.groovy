package carstolen

class Policial {

    String nomeCompleto
    String usuario
    String senha
    Cargo cargo

    static constraints = {

        nomeCompleto    maxSize:255, blank: false, nullable: false
        usuario         maxSize:50, blank: false, nullable: false
        senha           maxSize:20, blank: false, nullable: false
        cargo           blank: true
    }
}

        enum Cargo { // Patentes Policiais

            Coronel, Tenente_Coronel , Major, Capitão,
            Tenente, Primeiro_Sargento, Segundo_Sargento,
            Soldado

        }