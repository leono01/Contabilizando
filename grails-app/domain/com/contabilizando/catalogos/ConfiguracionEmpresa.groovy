package com.contabilizando.catalogos

class ConfiguracionEmpresa {
    
    String nombreDeEmpresa
    String nombreDeLogo
    byte[] logo
    String domicilio
    String email
    String telefono
    Estado estado
    
    static constraints = {
        nombreDeEmpresa     nullable:false, unique:true
        nombreDeLogo        nullable:true, maxSize:1000
        logo                nullable:true, maxSize:10000000
        domicilio           nullable:false
        email               email:true
        estado              nullable:true
        telefono            nullable:true
    }
    
    static mapping = {
        id generator: 'increment'
    }
    
}
