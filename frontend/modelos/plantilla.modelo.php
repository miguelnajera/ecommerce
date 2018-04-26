<?php

require_once "conexion.php";


class ModeloPlantilla{
	/*=============================================
	=       SE CREA UN METODO ESTATICO CUANDO
	 		EL METODO RECIBE PARAMETROS		      =
	=============================================*/
	
	static public function mdlEstiloPlantilla($tabla){
		$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla");

		$stmt-> execute();
		return $stmt ->fetch();
		$stmt->close();

	}
}