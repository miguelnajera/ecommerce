<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device=width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, ser-scalable=no">

	<meta name="title" content="Tienda Virtual">

	<meta name="description" content="Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quas officia earum, aperiam libero quibusdam ipsa ipsum, consequatur harum, velit commodi veritatis esse explicabo doloribus magni, quo iusto id est consectetur.">

	<meta name="keyword" content="Lorem ipsum dolor sit amet, consectetur, adipisicing, elit, Quas officia earum, aperiam ,libero quibusdam, ipsa, ipsum, consequatur harum">

	<?php

		$icono = controladorPlantilla::ctrEstiloPlantilla();
		echo '<link rel="icon" href="http://localhost/backend/'.$icono["icono"].'">';

		/*=============================================
		= MANTENER LA RUTA FIJA DEL PROYECTO          =
		=============================================*/
		
		$url = Ruta::ctrRuta();
		
	?>


	<link rel="stylesheet" type="text/css" href="<?php echo $url ?>vistas/css/plugins/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<?php echo $url ?>vistas/css/plugins/font-awesome.min.css">

	<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Ubuntu+Condensed" rel="stylesheet">

	<link rel="stylesheet" type="text/css" href="<?php echo $url ?>vistas/css/plantilla.css">
	<link rel="stylesheet" type="text/css" href="<?php echo $url ?>vistas/css/cabezote.css">
	<link rel="stylesheet" type="text/css" href="<?php echo $url ?>vistas/css/slide.css">

	<script src="<?php echo $url ?>vistas/js/plugins/jquery.min.js"></script>
	<script src="<?php echo $url ?>vistas/js/plugins/bootstrap.min.js"></script>


	<title>Tienda Virtual</title>

</head>
<body>
	

	<?php
	
	/*================================
	=            CABEZOTE           =
	================================*/
	
	include "modulos/cabezote.php";


	/*================================
	=      CONTENIDO DINAMICO        =
	================================*/

	$rutas = array();
	$ruta=null;

	if(isset($_GET["ruta"])){
		
		$rutas= explode("/", $_GET["ruta"]);

		$item = "ruta"  ;
		$valor= $rutas[0];


	/*================================
	=   URL AMIGABLES DE CATEGORIAS  =
	================================*/


		$rutaCategorias = ControladorProductos::ctrMostrarCategorias($item,$valor);	
		
		if($valor== $rutaCategorias["ruta"]){
			$ruta = $valor;
		}

	/*================================
	=   URL AMIGABLES DE SUBCATEGORIAS  =
	================================*/
		$rutaSubCategorias = ControladorProductos::ctrMostrarSubCategorias($item,$valor);

		foreach ($rutaSubCategorias as $key => $value) {
			
			if($valor== $value["ruta"]){
				$ruta = $valor;
			}
		}

	/*================================
	=   LISTA BLANCA DE URL AMIGABLES=
	================================*/
		if($ruta !=null){
			include "modulos/productos.php";
		}else{
			include "modulos/error404.php";
		}
	}else{

		include "modulos/slide.php";
	}


	?>

<script src="<?php echo $url ?>vistas/js/cabezote.js"></script>
<script src="<?php echo $url ?>vistas/js/plantilla.js"></script>
<script src="<?php echo $url ?>vistas/js/slide.js"></script>
</body>
</html>