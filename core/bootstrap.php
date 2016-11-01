<?php 
	
	use app\Core\App;
	$app = [];

	App::bind('config',require 'config.php');

	function redirect($path){
		header("Location: {$path}");
	}

	function view($view,$data = []){
		extract($data);
		return require "app/views/{$view}.view.php";
	}
	function style($css){
		echo "<link rel='stylesheet' href='public/{$css}'>";
	}

	function script($script){
		echo "<script src='public/{$script}'></script>";
	}

	return new QueryBuilder(
		Connection::make(App::get('config')['database'])
	);
