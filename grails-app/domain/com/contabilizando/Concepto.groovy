package com.contabilizando

class Concepto implements Serializable{
    String      cantidad
    String      descripcion
    String      numeroDeIdentificacion
    String      unidad
    BigDecimal  valorUnitario
    BigDecimal  importe
    
    static belongsTo = [movimiento:Movimiento]
    
    static constraints = {
        
        cantidad                blank:false, nullable:true
        descripcion             blank:false, nullable:true
        numeroDeIdentificacion  blank:true, nullable:true
        unidad                  blank:false, nullable:true
        valorUnitario           min:0.0, nullable:true
        importe                 min:0.0, nullable:true
        movimiento              nullable:true
       
    }
    
    static mapping = {   
        id generator : 'increment'
    }
}
