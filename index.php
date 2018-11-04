<?php 

	require 'admin/config.php';
	require 'php/funciones';

	$conexion = conexion($bd_config);
	if(!conexion){
		header('Location:php/error.php');
	}


	require 'views/index.view.php';
	

 ?>