package com.contabilizando.catalogos

class Municipio implements Serializable{

    String              nombre    
    
    
    static belongsTo=[estado:Estado]
    
    static constraints = 
    {
        nombre              blank:false, maxSize:50, unique: true        
        estado              nullable:false
        
    }
    static mapping = 
    {
        id generator : 'increment'
        //requisitos            cascade : 'all-delete-orphan'
    }
    String toString () 
    {
        "${nombre}"
    }
}
