
<div class="side-options">
    <ul>
        <li><a href="#" id="collapse-nav" class="act act-primary tip" title="Ocultar Menú"><i class="icon16 i-arrow-left-7"></i></a></li>
    </ul>
</div>

<sec:ifLoggedIn>

<div class="sidebar-wrapper">
    <nav id="mainnav">
        <ul class="nav nav-list">
            <li>

                <g:link controller="dashboard" action="index">
                    <span class="icon"><i class="icon20 i-home-10"></i></span>
                    <span class="txt">Inicio</span>
                </g:link>
            </li>
        </ul>
        <ul class="nav nav-list">
            <li>
                <g:link controller="persona" action="index">
                    <span class="icon"><i class="icon20 i-coins"></i></span>
                    <span class="txt">Proveedores</span>
                </g:link>
            </li>
        </ul>        
        <ul class="nav nav-list">
            <li>
                <g:link controller="contabilidad" action="index">
                    <span class="icon"><i class="icon20 i-coins"></i></span>
                    <span class="txt">Contabilidad</span>
                </g:link>
            </li>
        </ul>
        <%--<ul class="nav nav-list">
            <li>
                <g:link controller="movimiento" action="subirArchivoXML">
                    <span class="icon"><i class="icon20 i-coins"></i></span>
                    <span class="txt">Entrada</span>
                </g:link>
            </li>
        </ul>
        <ul class="nav nav-list">
            <li>
                <a href="#create-configuracionEmpresa">
                    <span class="icon"><i class="icon20 i-cart-5"></i></span>
                    <span class="txt">Salida</span>
                </a>
            </li>
        </ul>--%>
        <ul class="nav nav-list">
            <li>               
                <g:link controller="configuracionEmpresa" action="show" id="1">
                    <span class="icon"><i class="icon20 i-office"></i></span>
                    <span class="txt">Datos de la Empresa</span>
                </g:link> 
            </li>
        </ul>
    </nav> <!-- End #mainnav -->
</div> <!-- End .sidebar-wrapper  -->
</sec:ifLoggedIn>
