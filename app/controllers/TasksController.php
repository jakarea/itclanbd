<?php 

namespace app\controllers;
use app\core\App;

class TasksController{

	public function updateTask(){
		$condition['assign_to'] 	= $_SESSION['user']->id;
		$condition['id']			=$_GET['id'];
		if($_GET['state'] == 0){
			
			$result = App::get('db')->max('tasks','ordering');
			$data['completed'] 	= 1;
			$data['ordering'] 	= $result[0]->max + 1;	
		}else{
			
			$result = App::get('db')->min('tasks','ordering');
			$data['completed'] 	= 0;
			$data['ordering'] 	= $result[0]->min + 1;
		}
		$condition['assign_to'] 	= $_SESSION['user']->id;
		$condition['id']	=$_GET['id'];
		$result = App::get('db')->updateData('tasks',$data,$condition);
		$tasks =  App::get('db')->getData('tasks',['assign_to' => $_SESSION['user']->id]," ORDER BY ordering ASC");
		echo json_encode($tasks);
	}
	
}