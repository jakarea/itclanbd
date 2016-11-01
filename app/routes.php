<?php 

$route->get('','UsersController@getIndex');
$route->post('registration','UsersController@postRegistration');
$route->get('login','UsersController@getIndex');
$route->post('login','UsersController@postLogin');
$route->get('logout','UsersController@getLogout');

$route->get('verify','UsersController@updateLink');
$route->get('verified','UsersController@verifyMe');
$route->get('update-task','TasksController@updateTask');