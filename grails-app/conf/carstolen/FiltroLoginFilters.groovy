package carstolen

class FiltroLoginFilters {

    def filters = {  // filtro de usuarios
        all(controller:'policial', action:'paginaLogin',invert:true) {
            before = {

                if(session.policial){
                    true
                }else{
                    redirect(controller: 'policial',action: 'paginaLogin') //(Mudado)
                }

            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }

    }
}
