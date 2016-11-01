function Ali(id){
		var check = ''
		var state = 1;

		//$('#test').attr('id')
		var id=id;
		if(document.getElementById(id).checked == true){
			state = 0;
		}
		
		updateTask(id,state);
	}


	function updateTask(id,state) {
		$.ajax({
			type: 'GET',
	      	url: "update-task?id="+id+"&state="+state,
	      	//dataType:"json",
		    success: function(data) {
		    	var obj = JSON.parse(data);
		    	makeHtml(obj);
		   	}
	  	});
	}

	
	$("#vefifyme").on('click',function(){
		var message='';
		setLink();
	});

	function setLink() {
		$.ajax({
			type: 'GET',
	      	url: "verify",
		    success: function(data) {
		    	setMessage(data);
		   	}
	  	});
	}

	function setMessage(message){

		$('.alert').removeClass('alert-warning');
		$('.alert').addClass('alert-info');
		$('.alert').html(message);
	}



	
		



	function makeHtml(obj){
		var loop ='';
		for(var i = 0; i< obj.length;i++){
			if(obj[i]['completed'] == 1)
				obj[i]['completed'] = "checked";
			else
				obj[i]['completed'] = "";
			loop +='<tr><td>';
			loop +=obj[i]['task'];
			loop +='</td><td><input type="checkbox"';
			loop += 'onchange="Ali('+obj[i]['id']+')"';
			loop += obj[i]['completed'];
			loop +=' class="checkthis" id="';
			loop += obj[i]['id'];
			loop +='"></td></tr>';
		}


		$("#todos").html(loop);
	}


