package com.contabilizando

class Impuesto implements Serializable{
    
    String      nombreDelImpuesto
    BigDecimal  tasa
    BigDecimal  importe
        
    static belongsTo = [movimiento:Movimiento]
    
    static constraints = {
        
        nombreDelImpuesto   blank:true, nullable:true
        tasa                blank:false,min:0.0, nullable:true
        importe             blank:false,min:0.0, nullable:true
        movimiento          nullable:true
        
    }
    
    static mapping = {     
        id generator : 'increment'
    }
}
