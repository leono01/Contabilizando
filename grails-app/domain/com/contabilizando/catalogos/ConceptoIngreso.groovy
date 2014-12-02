package com.contabilizando.catalogos

class ConceptoIngreso {
    String nombreConceptoIngreso
    String descripcionConceptoIngreso
    
    static constraints = {
        nombreConceptoIngreso nullable:false
        descripcionConceptoIngreso nullable:false
    }
    
    String toString(){
        "${nombreConceptoIngreso}"
    }
    
    static mapping = {
        id generator: 'increment'
    }
    
}
