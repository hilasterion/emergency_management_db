
<body>
    <div id="main_container">
        <div id="header">
            <div class="logo">
                <img src="img/ERMSlogo.gif" style="opacity:0.5;background-color:E9E5E2;" border="0" alt="" title="ERMS Logo"/>
            </div>
        </div>
	</div>
	<br></br>
	<h2> Add Emergency Incident </h2>
	<br></br>
</body>


<?php

include('dbConnect.php');

if (!isset($_SESSION['username'])) {
	header('Location: login.php');
	exit();
}


$err_incident_declaration='';
$err_incident_date='';
$err_incident_description='';
$err_incident_longitude='';
$err_incident_latitude='';

if( $_SERVER['REQUEST_METHOD'] == 'POST') {
	
	
	if ($_POST['incident_declaration'] == 'Select Emergency Type' or (empty($_POST['incident_declaration']))) {
		$err_incident_declaration ="Please select a Primary ESF" ;
	}
		

	
	if (empty($_POST['incident_description'])) {
		$err_incident_description ="Please enter an incident description" ;
	} else
	if (trim($_POST['incident_description']) == '' ) {
		$err_incident_description ="Please enter an incident description" ;
	} 

	
	if (empty($_POST['incident_latitude'])) {
		$err_incident_latitude ="Please enter a latitude" ;
	} else
	if ($_POST['incident_latitude']!= '' and !is_numeric($_POST['incident_latitude'])) {
		$err_incident_latitude ="Please enter a number only" ;
	} else
	if ($_POST['incident_latitude'] > 90 or $_POST['incident_latitude'] < -90 ) {
		$err_incident_latitude ="Please enter a number between -90 and 90" ;
	}	
	
	if (empty($_POST['incident_longitude'])) {
		$err_incident_longitude ="Please enter a longitude" ;
	}  else
	if ($_POST['incident_longitude']!= '' and !is_numeric($_POST['incident_longitude'])) {
		$err_incident_longitude ="Please enter a number only" ;
	} else
	if ($_POST['incident_longitude'] > 180 or $_POST['incident_longitude'] < -180 ) {
		$err_incident_longitude ="Please enter a number between -180 and 180" ;
	}	
		

		
		
$temp_date = strtotime($_POST['incident_date']);

if (empty($_POST['incident_date'])) {
	$err_incident_date="Please Enter Incident Date";
} else
      if ($temp_date) {
  $sql_incident_date = date('Y-m-d', $temp_date);
  //echo $sql_incident_date;
 } else {	
	$err_incident_date="Please Enter a Valid Incident Date with the format YYYY-MM-DD";

}




   		
		if ($err_incident_declaration=='' and $err_incident_date=='' and $err_incident_description=='' and 
		$err_incident_longitude=='' and $err_incident_latitude=='')
		{

			$incident_latitude = mysqli_real_escape_string($db, $_POST['incident_latitude']);
			$incident_longitude = mysqli_real_escape_string($db, $_POST['incident_longitude']);
			
			$incident_description = mysqli_real_escape_string($db, $_POST['incident_description']);
			
			$incident_declaration = mysqli_real_escape_string($db, $_POST['incident_declaration']);
 
			
			
			
			
			
			
		$incident_query1 = "SELECT max(incident_number)+1 as new_incident_number from  cs6400_team02_summer2018.Incident " . 
		                  "WHERE incident_type = '$_POST[incident_declaration]'";
  
			$result1 = mysqli_query($db, $incident_query1);
			$row = mysqli_fetch_array($result1);	
            $new_incident_number = $row['new_incident_number'];;

			
		$incident_query2 = "INSERT INTO cs6400_team02_summer2018.Incident " . 
                           "(incident_number, incident_type, incident_owner, incident_date, incident_description, latitude, longitude) " .
						   "VALUES ( $new_incident_number , '$incident_declaration' , '{$_SESSION['username']}' , '$sql_incident_date' , '$incident_description' , '$incident_latitude' , '$incident_longitude')";
		$result2 = mysqli_query($db, $incident_query2);

			

	if ($result1 and $result2 ) {
		header("location: MainMenu.php");
    }		}

}

 ?>
 
 
 
 <body>
 <form action="AddIncident.php" method="post" enctype="multipart/form-data">

 
 
 					<div class="Add_incident">
					  <label for="incident_declaration"><b>Incident Declaration Type</b>  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
						<select name="incident_declaration">
						
						 <?php
						        $query = "SELECT incident_type, incident_type_long FROM IncidentTypes";
								$result = mysqli_query($db, $query);
								echo "<option value='Select Emergency Type'>Select Emergency Type</option>";
								while ($row = mysqli_fetch_array($result)) {
										echo '<option value="' . $row['incident_type'] . '">'.  $row['incident_type_long']  . '</option>"';
								}
						 ?>
						 </select>
						<?php
							echo "<font color='red'>$err_incident_declaration<font color='black'>" ;
						 ?>
					</div>

 		<br></br> 
		
                    <div class="Add_incident">
                        <label class="Add_incident"><b>Incident ID</b>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
						 <input type="text" value="Automatically Assigned" class="field left" readonly> 

					</div>
 
 		<br></br> 
		
		
                    <div class="login_form_row">
                        <label class="Add_incident"><b>Date of Incident</b> (YYYY-MM-DD)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                        <input type="text" name="incident_date"  class="Add_incident" value="<?php echo isset($_POST['incident_date']) ? $_POST['incident_date'] : '' ?>"  />
						<?php
							echo "<font color='red'>$err_incident_date<font color='black'>" ;
						 ?>
					</div>
 
		<br></br> 
		
		
                    <div class="login_form_row">
                        <label class="Add_incident"><b>Description of Incident</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                        <input type="text" name="incident_description"  class="Add_incident" value="<?php echo isset($_POST['incident_description']) ? $_POST['incident_description'] : '' ?>"  />
						<?php
							echo "<font color='red'>$err_incident_description<font color='black'>" ;
						 ?>					</div>
 
 
 		<br></br> 
		
					<b>Location of Incident:</b>

                    <div class="login_form_row">
                        <label class="add_resource">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;Latitude &nbsp; &nbsp; &nbsp;&nbsp;</label>
                        <input type="text" name="incident_latitude"  class="Add_incident"  placeholder="00.0000" value="<?php echo isset($_POST['incident_latitude']) ? $_POST['incident_latitude'] : '' ?>"/>
						<?php
							echo "<font color='red'>$err_incident_latitude<font color='black'>" ;
						 ?>

                    <div class="login_form_row">
                        <label class="add_resource">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;Longitude &nbsp;&nbsp;&nbsp;</label>
                        <input type="text" name="incident_longitude"  class="Add_incident"  placeholder="00.0000" value="<?php echo isset($_POST['incident_longitude']) ? $_POST['incident_longitude'] : '' ?>" />
						<?php
							echo "<font color='red'>$err_incident_longitude<font color='black'>" ;
						 ?>
					</div>
					<br></br> 
	
 
 
 
 
 </form>
 						  <button type="submit" value="Submit">Submit</button>

 					<br></br> 

 <b>Links</b>
<li> <a href='MainMenu.php'>Main Menu</a> </li>
<li> <a href='AddResource.php'>Add Resource</a> </li>
<li> <a href='AddIncident.php'>Add Emergency Incident	</a> </li>
<li> <a href='SearchResources.php'>Search For and Request Resources</a> </li><li> <a href='ResourceStatus.php'>Resource Status</a> </li>
<li> <a href='ResourceReport.php'>Resource Report</a> </li>
<li> <a href='LogOut.php'>LogOut</a> </li>
</body>