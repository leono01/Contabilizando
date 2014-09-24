package com.contabilizando

class PersonaMoral extends Persona{
    
    String denominacionSocial   //  nombre bajo el cual opera mercantilmente
    String nombreComercial      //  o razón social
    
    static constraints = {
        denominacionSocial  blank:false, nullable:true
        nombreComercial  blank:false, nullable:true
    }
}
