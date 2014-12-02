package com.contabilizando

class PersonaFisica extends Persona {
    String nombres
    String apellidoPaterno
    String apellidoMaterno
    static constraints = {
        nombres         blank:false, nullable:true
        apellidoPaterno blank:false, nullable:true
        apellidoMaterno blank:false, nullable:true
    }
    
    String toString(){
        "${nombres} ${apellidoPaterno} ${apellidoMaterno}"
    }
}
