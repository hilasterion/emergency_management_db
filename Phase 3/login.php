<?php
include('dbConnect.php');

if( $_SERVER['REQUEST_METHOD'] == 'POST') {

	$enteredUsername = mysqli_real_escape_string($db, $_POST['username']);
	$enteredPassword = mysqli_real_escape_string($db, $_POST['password']);

	$err_username="";
	$err_pass="";
	$err_login="";
	
	if (empty($enteredUsername)) {
		$err_username ="Please enter an email address" ;
	}

	if (empty($enteredPassword)) {
		$err_pass="Please enter a password" ;
	}
	
    if ( !empty($enteredUsername) && !empty($enteredPassword) )   { 

        $query = "SELECT username, password FROM ERMSuser WHERE upper(username)=upper('$enteredUsername')";
        $result = mysqli_query($db, $query);
        $count = mysqli_num_rows($result); 
        	

        if (!empty($result) && ($count > 0) ) {
            $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
            $storedPassword = $row['password']; 

            if ($enteredPassword == $storedPassword) {
                $_SESSION['username'] = $row['username'];
                header(REFRESH_TIME . 'url=MainMenu.php');		// a successful login is directed to the main menu page
                
            } else {
                $err_login="Login Failed - Passwords are Case Sensitive";
            }
            
        } else {
                $err_login="The username entered does not exist.";
            }
    }
}
?>


<body>
    <div id="main_container">
        <div id="header">
            <div class="logo">
                <img src="img/ERMSlogo.gif" style="opacity:0.5;background-color:E9E5E2;" border="0" alt="" title="ERMS Logo"/>
            </div>
        </div>
<br>
</br>
        <div class="center_content">
            <div class="text_box">
                <form action="login.php" method="post" enctype="multipart/form-data">
                    <div class="title"><b>ERMS Login</b></div>
					<br></br> 
                    <div class="login_form_row">
                        <label class="login_label">Username:</label>
                        <input type="text" name="username"  class="login_input"/>
						<?php
							echo "<font color='red'>$err_username<font color='black'>" ;
						 ?>
                    </div>
                    <div class="login_form_row">
                        <label class="login_label">Password:</label>
                        <input type="password" name="password"  class="login_input"/>
						<?php
							echo "<font color='red'>$err_pass<font color='black'>" ;
						 ?>
                    </div>
                    <input type="submit" value="Login" class="login"/>
                    <form/>
                </div>
				<?php
					echo "<font color='red'>$err_login<font color='black'>" ;
				?>
              <div class="clear"></div>
            </div>
        </div>
</body>
