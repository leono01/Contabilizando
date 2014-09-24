package com.contabilizando.catalogos

class Estado implements Serializable{
    String nombre
    
    static belongsTo = [pais: Pais]
    
    static constraints = {
        nombre blank:false
    }
    
    String toString() {
        "${nombre}"
    }
    
    static mapping = {
        id generator : 'increment'
    }
    
}
