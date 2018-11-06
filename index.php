<?php session_start();

	require 'admin/config.php';
	require 'php/funciones.php';

	comprobarSession();

	$conexion = conexion($bd_config);
	if(!$conexion){
		header('Location:php/error.php');
	}

	$cursos = obtener_profesoresCurso($conexion, $_SESSION['id']);
	print_r($cursos);
	require 'views/index.view.php';
	

 ?>