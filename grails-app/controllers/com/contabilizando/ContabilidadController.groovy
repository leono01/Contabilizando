package com.contabilizando

class ContabilidadController {

    def index() { }
    
    def listarIngresos() {
        def categoria1 = Categoria.get(1) 
        def todosLosIngresos = Movimiento.findAll("from Movimiento where categoria = :estaCategoria", [estaCategoria: categoria1])
        [todosLosIngresos:todosLosIngresos]
    }
    
    def listarGastos() {
        def categoria2 = Categoria.get(2) 
        def todosLosGastos = Movimiento.findAll("from Movimiento where categoria = :estaCategoria", [estaCategoria: categoria2])
        [todosLosGastos:todosLosGastos]
    }
}
