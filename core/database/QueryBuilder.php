<?php 

class QueryBuilder{

	protected $pdo;
	function __construct($pdo){
		$this->pdo = $pdo;
	}

	public function max($table,$column){
		$sql = $this->pdo->prepare("SELECT MAX($column) as max From {$table} WHERE assign_to = ".$_SESSION['user']->id);
		$sql->execute();
		return $sql->fetchAll(PDO::FETCH_OBJ);
	}
	public function min($table,$column){
		$sql = $this->pdo->prepare("SELECT min($column) as min From {$table} WHERE assign_to = ".$_SESSION['user']->id );

		$sql->execute();
		return $sql->fetchAll(PDO::FETCH_OBJ);
	}

	public function insertData($table,$data){
		$sql = sprintf(
			"insert into %s (%s) values (%s)",
			$table,
			implode(', ', array_keys($data)),
			':'.implode(', :', array_keys($data))
			);

		$sql = $this->pdo->prepare($sql);
		
		try {
			$sql->execute($data);
			return true;
		} catch (PDOException $e) {
			die("Woops Something went wrong");
		}
	}

	public function getData($table,$data=[],$order=''){
		$condition='';
		if($data)
		foreach ($data as $key => $value) {
			$condition .=	$key." = '" . $value."' AND ";
		}

		$sql = " SELECT * FROM {$table} WHERE ". $condition . 1 . $order;
		$sql = $this->pdo->prepare($sql);
		$sql->execute();
		return $sql->fetchAll(PDO::FETCH_OBJ);
	}

	public function updateData($table,$data=[],$where=[]){
		if(empty($data || $condition)){
			return false;
		}

		$condition='';
		$update = '';
		foreach ($data as $key => $value) {
			$update .=	$key." = '" . $value."', ";
		}

		foreach ($where as $key => $value) {
			$condition .=	$key." = '" . $value."' AND ";
		}

		$sql = " UPDATE {$table} SET ". rtrim($update,' , ') ." WHERE ". $condition . 1;
		$sql = $this->pdo->prepare($sql);
		return $sql->execute();
	}
}