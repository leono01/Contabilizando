package com.contabilizando.catalogos

class ConceptoGasto {
    String nombreConceptoGasto
    String descripcionConceptoGasto
    
    static constraints = {
        nombreConceptoGasto nullable:false
        descripcionConceptoGasto nullable:false
    }
    
    String toString(){
        "${nombreConceptoGasto}"
    }
    
    static mapping = {
        id generator: 'increment'
    }
    
}
