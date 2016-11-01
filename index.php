<?php 
session_start();
use app\core\App;
use app\core\{Router, Request};

	require 'vendor/autoload.php';
	require 'captcha.php';
	$_SESSION['captcha'] = captcha();
	App::bind('db',require 'core/bootstrap.php');

	$route = new Router;

    $route->load('app/routes.php')->direct(Request::uri(),Request::method());

