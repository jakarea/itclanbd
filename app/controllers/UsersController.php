<?php 

namespace app\controllers;
use app\core\App;
use app\core\System;

class UsersController{

	public function index(){
		$users = App::get('db')->selectAll('users');
		return view('index',compact('users'));
	}
	

	public function getIndex(){
		if(!isset($_SESSION['user'])){
			$title = "Welcome to login page";
			view('partial/header',compact('title'));
			view('login');
			view('partial/footer');
		}
		else{
			$this->logedin();
		}
	}

	public function logedin(){
		$title = "Welcome Back";
		view('partial/header',compact('title'));
		$tasks = App::get('db')->getData('tasks',['assign_to' => $_SESSION['user']->id]," ORDER BY ordering ASC");
		if(!$_SESSION['user']->varified){
			$_SESSION['alert'] ="warning";
			$_SESSION['message'] = 
				"Your email is not varified. Please <button class='btn btn-xs btn-warning' id='vefifyme'>Click Me</button> to verify your email.<br>";
		}
		view('task',compact('tasks'));
		view('partial/footer');
	}

	public function postRegistration(){
		$data['email'] = $_POST['email'];
		$data['password'] = hash('sha256',$_POST['password']);
		$data['expire']	= System::getExpire();
		$data['link'] 	= System::getLink();
		$result = App::get('db')->insertData('users',$data);

		if($result){
			$body = "Please click the link to verify your mail. It will not work after 1 hour. <a href='"
				.App::get('config')['baseurl']."verified?link=".$data['link']
				."'>".App::get('config')['baseurl']
				."verify?link="
				.$data['link']
				."</a>.<br>Thank you";
				
			if($this->sendMail($data['email'],' Email verification ',$body)){
				$_SESSION['alert'] ="info";
				$_SESSION['message'] = "Verification link has send to your mail. Please Check ";
			}
		}

		return redirect('/login');
	}

	public function postLogin(){
		if($_POST['captcha'] !== $_SESSION['captcha-code']){
			$_SESSION['message'] = "Invalid Captcha Code";
			$_SESSION['alert'] = "danger";
			return redirect('/');
		}
 			
		$data['email'] = $_POST['email'];
		$data['password'] = hash('sha256',$_POST['password']);
		$user = App::get('db')->getData('users',$data);
		if(count($user) !== 1){
			$_SESSION['message'] = "Invalid usernaem or password";
			return redirect('/login');
		}
		$_SESSION["user"] = $user[0];
		return redirect('/');
	}

	public function getLogout(){
		unset($_SESSION['user']);
		session_destroy();
		return redirect('/');
	}

	public function updateLink(){
		if(!$_SESSION['user'])
			return redirect('/');

		$data['expire']	= System::getExpire();
		$data['link'] 	= System::getLink();
		$result = App::get('db')->updateData('users',$data,['id' => $_SESSION['user']->id]);
		if($result){
			$body = "Please click the link to verify your mail. It will not work after 1 hour. <a href='"
				.App::get('config')['baseurl']."verified?link=".$data['link']
				."'>".App::get('config')['baseurl']
				."verify?link="
				.$data['link']
				."</a>.<br>Thank you";
				
			if($this->sendMail($_SESSION['user']->email,' Email verification ',$body)){
				echo "Verification link has send to your mail. Please Check ";
				exit;
			}
		}
	}

	public function verifyMe(){
		$condition['link'] 		= $_GET['link'];
		$condition['email'] 	= $_GET['email'];
		$data['varified'] = 1;
		$data['link'] = '';
		$expire = App::get('db')->getData('users',$condition);
		if($expire && ($expire[0]->expire >= System::getExpire()-3600)){
			if(App::get('db')->updateData('users',$data,$condition)){
					$_SESSION['message'] = "Thank you email has been verifed";
					$_SESSION['alert'] = "success";
				}else{
					$_SESSION['message'] = "Oh Allah! What happend";
					$_SESSION['alert'] = "danger";
				}
			}else{
				$_SESSION['message'] = "Your session has been expired. Please login and create verify link again.<br> Thank you.";
			}
 		redirect('/login');
	}
	
	public function sendMail($to,$subject,$body){
		$headers = "MIME-Version: 1.0" . "\r\n";
		$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

		// More headers
		$headers .= 'From: <jakarea.me>' . "\r\n";
		return mail($to,$subject,$body,$headers);
	}

}
//http://localhost/verifed?link=SKfqui9blP&email=jakareaparvez@ymail.com