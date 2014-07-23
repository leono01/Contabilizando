<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta name='layout' content='main' />
    <title>Facturas</title>
  </head>
  <body>
    <div id="content-header">
      
    </div>
    <div id="breadcrumb">
      <g:link class="tip-bottom" controller="dashboard"><i class="icon-home"></i>Inicio </g:link>
      /
      <g:link class="current" controller="dashboard"> Facturas</g:link>
    </div>
    <div class="container-fluid">
      <br/>
      <g:if test="${flash.message}">
        <div class="alert">
          <strong>¡Atención!</strong> ${flash.message}
        </div>
      </g:if>

      <div class="widget-box">
        <div class="widget-title">
          <span class="icon">
            <i class="icon-signal"></i>
          </span>
          <h5>Estadísticas de las facturas</h5>
          <div class="buttons">
            <g:link name="refreshStats" action ="index" class="btn btn-mini">
              <i class="icon-refresh"></i> Actualizar Estadísticas
            </g:link>
          </div>
        </div>
        <div class="widget-content">
          <div class="row-fluid">
            <div class="span4">
              <ul class="site-stats">
                <%--<li><i class="icon-arrow-right"></i> <strong>${ingresados}</strong> <small>Ingresados</small></li>
                <li><i class="icon-arrow-right"></i> <strong>${conAnalistas}</strong> <small>Asignados a Analistas</small></li>
                <li><i class="icon-arrow-right"></i> <strong>${conGestores}</strong> <small>Asignados a Gestores</small></li>
                <li><i class="icon-arrow-right"></i> <strong>${listosParaEntregarse}</strong> <small>Listos para Entregarse</small></li>
                <li><i class="icon-arrow-right"></i> <strong>${terminados}</strong> <small>Terminados</small></li>
                <li><i class="icon-arrow-right"></i> <strong>${cancelados}</strong> <small>Cancelados</small></li>--%>
              </ul>
            </div>
            <div class="span8">
              <div id="mygraph"></div>
            </div>	
          </div>							
        </div>
      </div>
      <%--<script src="${resource(dir:'js',file:'jquery.jqplot.min.js')}"></script> 
      <script src="${resource(dir:'js',file:'jqplot.dateAxisRenderer.min.js')}"></script> 
      <script src="${resource(dir:'js',file:'jqplot.canvasTextRenderer.min.js')}"></script> 
      <script src="${resource(dir:'js',file:'jqplot.canvasAxisTickRenderer.min.js')}"></script> 
      <script src="${resource(dir:'js',file:'jqplot.categoryAxisRenderer.min.js')}"></script> 
      <script src="${resource(dir:'js',file:'jqplot.barRenderer.min.js')}"></script> --%>
      

      <%--<script>
        $(document).ready(function(){
          var line1 = [['Ingresados', ${ingresados}], ['Con analista', ${conAnalistas}], ['Con Gestores', ${conGestores}], 
          ['Listos Para Entregarse', ${listosParaEntregarse}], ['Terminados', ${terminados}], 
          ['Cancelados', ${cancelados}]];

          var plot1 = $.jqplot('mygraph', [line1], {
            title: 'Estadísticas de Expedientes',
            series:[{renderer:$.jqplot.BarRenderer}],
            axesDefaults: {
                tickRenderer: $.jqplot.CanvasAxisTickRenderer ,
                tickOptions: {
                  angle: -30,
                  fontSize: '10pt'
                }
            },
            axes: {
              xaxis: {
                renderer: $.jqplot.CategoryAxisRenderer
              }
            }
          });
        });
      </script>    --%>   
      
    </div>
  </body>
</html>
