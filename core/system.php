<?php 

namespace app\core;
use \DateTime;
class System{
	

	public static function getExpire(){
		return (new DateTime())->getTimestamp() + 3600;
	}
	public static function getLink(){
		return substr(str_shuffle("QWERTYUIOPASDFGHJKLZXCVBNMzxcvbnmasdfghjklqwertyuiop1234567890"), 0, 10);
	}
}