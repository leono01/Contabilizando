package com.contabilizando

import com.contabilizando.Categoria

class TipoDeOperacion implements Serializable{
    String      nombreDeTipoDeOperacion
    
    static belongsTo = [categoria:Categoria] //Pertenece a una catogoria
    
    static constraints = {
        nombreDeTipoDeOperacion nullable:true, maxSize:200, unique:true // es un atributo obligatorio, tiene un máximo de caracteres de 200 y debe ser unico
    }
    
    static mapping = {
        id generator: 'increment'
    }
}
