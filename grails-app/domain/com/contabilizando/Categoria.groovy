package com.contabilizando

class Categoria implements Serializable{

    String nombreDeCategoria
    
    static constraints = {
        nombreDeCategoria nullable:true, inList:["Ingreso","Gasto"]
    }
    
    static mapping = {
        id generator:'increment'
    }
    
    String toString(){
        "${nombreDeCategoria}"
    }
}
