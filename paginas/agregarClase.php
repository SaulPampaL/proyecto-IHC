<?php session_start();

	require '../admin/config.php';
	require '../php/funciones.php';

	comprobarSession();

	require '../views/agregarClase.view.php';


 ?>