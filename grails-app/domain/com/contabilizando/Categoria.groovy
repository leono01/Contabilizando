package com.contabilizando

class Categoria implements Serializable{

    String nombreDeCategoria
    
    static constraints = {
        nombreDeCategoria nullable:true, inList:["Ingreso","Gasto"]
    }
    
    String toString(){
        "${nombreDeCategoria}"
    }
    
    static mapping = {
        id generator : 'increment'
    }
    
}
