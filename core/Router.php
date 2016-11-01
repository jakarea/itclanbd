<?php 

namespace app\core;
use \Exception;

class Router
{
	public $routes = [
		'GET' 	=> [],
		'POST'	=> []
	];

	public function get($uri,$controller){

		return $this->routes['GET'][$uri] = $controller;
	}
	
	public function post($uri,$controller){
		return $this->routes['POST'][$uri] = $controller;
	}

	public static function load($file){
		$route = new Router;
		require $file;
		return $route;
	}

	public function direct($uri,$methodType){
		if(!array_key_exists($uri, $this->routes[$methodType])){
			die("No route define for this {$uri}");
		}
		$this->callAction(
			...explode('@',$this->routes[$methodType][$uri])
			);
		
	}

	protected function callAction($controller,$action){
		$controller = "app\\controllers\\{$controller}";
		$controller = new $controller;
		if(!method_exists($controller, $action)){
			throw new Exception('opps');
		}
		return $controller->$action();
	}	
}