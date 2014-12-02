package com.contabilizando.catalogos

class RegimenFiscal implements Serializable{

    String nombreRegimenFiscal   
    
    static constraints = {
        nombreRegimenFiscal nullable:false
    }
    
    String toString(){
        "${nombreRegimenFiscal}"
    }
}
