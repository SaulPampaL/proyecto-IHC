<?php 

	require 'admin/config.php';
	require 'php/funciones.php';

	$conexion = conexion($bd_config);
	if(!$conexion){
		header('Location:php/error.php');
	}

	$cursos = obtener_profesoresCurso($conexion, 3);

	require 'views/index.view.php';
	

 ?>