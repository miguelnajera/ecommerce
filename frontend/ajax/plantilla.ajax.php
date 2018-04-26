<?php

require_once  "../controladores/plantilla.controlador.php";
require_once  "../modelos/plantilla.modelo.php";

class AjaxPlantilla{

	public function ajaxEstiloPlantilla(){
		$respuesta = controladorPlantilla::ctrEstiloPlantilla();

		//JSON ENCODE CONVIERTE UN ARRAY EN UN STRING 
		//JSON DECODE CONVIERTE UN STRING EN UN ARRAY
		echo json_encode($respuesta);
	}
}

$objeto = new AjaxPlantilla();
$objeto->ajaxEstiloPlantilla();