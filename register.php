<?php 
	
	include('dbconnect.php');
	
	$f_name=$_POST['f_name'];
	$l_name=$_POST['l_name'];
	$email=$_POST['email'];
	$password=md5($_POST['password']);
	$mobile=$_POST['mobile'];
	$address1=$_POST['address1'];
	$address2=$_POST['address2'];
	$name = "/^[A-Z][a-zA-Z ]+$/";
	$emailValidation = "/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9]+(\.[a-z]{2,4})$/";
	$number = "/^[0-9]+$/";


	if(empty($f_name) || empty($l_name) || empty($email) || empty($password) || empty($mobile) || empty($address1) || empty($address2)){
		echo "<div class='alert alert-danger alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>Please fill all the fields!</div>";
		exit(0);
	}
	else{
		if(!preg_match($name,$f_name)){
		echo "
			<div class='alert alert-warning'>
				<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
				<b>this $f_name no tiene el formato correcto</b>
			</div>
		";
		exit();
		}

		if(!preg_match($name,$l_name)){
		echo "
			<div class='alert alert-warning'>
				<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
				<b>this $l_name no tiene el formato correcto</b>
			</div>
		";
		exit();
		}

		if(!preg_match($emailValidation,$email)){
		echo "
			<div class='alert alert-warning'>
				<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
				<b>this $email no tiene el formato correcto</b>
			</div>
		";
		exit();
		}

		if(strlen($password) < 9 ){
		echo "
			<div class='alert alert-warning'>
				<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
				<b>La contraseña es poco segura</b>
			</div>
		";
		exit();
		}

		if(!preg_match($number,$mobile)){
		echo "
			<div class='alert alert-warning'>
				<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
				<b>El numero $mobile no es válido</b>
			</div>
		";
		exit();
		}

		if(!(strlen($mobile) == 9)){
		echo "
			<div class='alert alert-warning'>
				<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
				<b>El número debe tener 9 dígitos</b>
			</div>
		";
		exit();
		}

		$sql = "SELECT user_id FROM user_info WHERE email = '$email' LIMIT 1" ;
		$check_query = mysqli_query($conn,$sql);
		$count_email = mysqli_num_rows($check_query);

		if($count_email > 0){
		echo "
			<div class='alert alert-danger'>
				<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
				<b>Este correo ya tiene asignada una ceunta, prueba con otro correo</b>
			</div>
		";
		exit();
		}

		else {
					$sql="INSERT INTO user_info (first_name, last_name, email, password, mobile, address1, address2) VALUES ('$f_name','$l_name','$email','$password','$mobile','$address1','$address2')";
					$run_query=mysqli_query($conn,$sql);
					if($run_query){
						echo "
								<div class='alert alert-success'>
									<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
									Clica <b><a href='index.php'>para</a></b> logearte.
								</div>
						";
					}
			}
		}
	

	

	
 ?>