package com.contabilizando.catalogos

class Pais implements Serializable{
    String nombre
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
