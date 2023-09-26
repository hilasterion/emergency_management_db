
<body>
    <div id="main_container">
        <div id="header">
            <div class="logo">
                <img src="img/ERMSlogo.gif" style="opacity:0.5;background-color:E9E5E2;" border="0" alt="" title="ERMS Logo"/>
            </div>
        </div>
	</div>
	<br></br>
	<h2> Add Resource </h2>
	<br></br>
</body>


<?php

include('dbConnect.php');

if (!isset($_SESSION['username'])) {
	header('Location: login.php');
	exit();
}
 
	



$err_resource_name='';
$err_primESF='';
$err_latitude='';
$err_longitude='';
$err_max_dist='';
$err_cost='';

if( $_SERVER['REQUEST_METHOD'] == 'POST') {
	
	
	if (empty($_POST['resource_name'])) {
		$err_resource_name ="Please enter a Resource Name" ;
	} else
	if (trim($_POST['resource_name']) == '') {
		$err_resource_name ="Please enter a Resource Name" ;
	} 
	
	if ($_POST['primESF'] == 'Select Primary ESF' or (empty($_POST['primESF']))) {
		$err_primESF ="Please select a Primary ESF" ;
	}
	
	if (empty($_POST['latitude'])) {
		$err_latitude ="Please enter a latitude" ;
	} else
	if ($_POST['latitude']!= '' and !is_numeric($_POST['latitude'])) {
		$err_latitude ="Please enter a number only" ;
	} else
	if ($_POST['latitude'] > 90 or $_POST['latitude'] < -90 ) {
		$err_latitude ="Please enter a number between -90 and 90" ;
	}	
	
	if (empty($_POST['longitude'])) {
		$err_longitude ="Please enter a longitude" ;
	}  else
	if ($_POST['longitude']!= '' and !is_numeric($_POST['longitude'])) {
		$err_longitude ="Please enter a number only" ;
	} else
	if ($_POST['longitude'] > 180 or $_POST['longitude'] < -180 ) {
		$err_longitude ="Please enter a number between -180 and 180" ;
	}	
		

	if (empty($_POST['max_dist'])) {
		$err_max_dist ="Please enter a maximum distance the resource will travel" ;
	} else
	if (trim($_POST['max_dist']) == '') {
		$err_max_dist ="Please enter a maximum distance the resource will travel" ;
	} else
	if (!is_numeric($_POST['max_dist'])) {
		$err_max_dist ="Please enter a number only" ;
	} else
	if ($_POST['max_dist'] < 0 ) {
		$err_max_dist ="Please enter a number > 0" ;
	}	
	
	
	
	if (empty($_POST['cost'])) {
		$err_cost ="Please enter a cost" ;
	} else
	if (trim($_POST['cost']) == '') {
		$err_cost ="Please enter a cost" ;
	} else
	if (!is_numeric($_POST['cost'])) {
		$err_cost ="Please enter a number only" ;
	} else
	if ($_POST['cost'] < 0 ) {
		$err_cost ="Please enter a number >= 0" ;
	}
	
	

        $resource_name = mysqli_real_escape_string($db, $_POST['resource_name']);
        $primESF = mysqli_real_escape_string($db, $_POST['primESF']);  
        $capabilities1 = mysqli_real_escape_string($db, $_POST['capabilities1']);
        $capabilities2 = mysqli_real_escape_string($db, $_POST['capabilities2']);
        $capabilities3 = mysqli_real_escape_string($db, $_POST['capabilities3']);
        $capabilities4 = mysqli_real_escape_string($db, $_POST['capabilities4']);
        $capabilities5 = mysqli_real_escape_string($db, $_POST['capabilities5']);
        $model = mysqli_real_escape_string($db, $_POST['model']);

        $latitude = mysqli_real_escape_string($db, $_POST['latitude']);
        $longitude = mysqli_real_escape_string($db, $_POST['longitude']);
        $max_dist = mysqli_real_escape_string($db, $_POST['max_dist']);
        $cost = mysqli_real_escape_string($db, $_POST['cost']);
        $time_unit = mysqli_real_escape_string($db, $_POST['time_unit']);

        $additional_esf  = $_POST['additionalESF'];

	
	
	
if ($err_resource_name=='' and $err_primESF=='' and $err_latitude=='' and $err_longitude=='' and $err_max_dist=='' and $err_cost=='') {
	
            $query = " INSERT INTO cs6400_team02_summer2018.ERMSResource" .
                     " (resource_owner,resource_name,primary_ESF_number,model,latitude,longitude,time_unit,dollars,date_deployed,max_distance,status)" . 
                     " VALUES ( '{$_SESSION['username']}' , '$resource_name' , '$primESF' , '$model' , '$latitude' , '$longitude' , '$time_unit ' ,'$cost' , NULL , '$max_dist' , 'Available');";

			$result = mysqli_query($db, $query);

			$query2 = "select max(resource_id) as resource_id from cs6400_team02_summer2018.ERMSResource;";
			$result2 = mysqli_query($db, $query2);
			$row = mysqli_fetch_array($result2);
			
	if ($capabilities1 != '' and $result and $result2) {
		$query3= "INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES ($row[resource_id], '$capabilities1' );";
		$result3 = mysqli_query($db, $query3);
	};
	if ($capabilities2 != '' and $result and $result2) {
		$query3= "INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES ($row[resource_id], '$capabilities2' );";
		$result3 = mysqli_query($db, $query3);
	};
	if ($capabilities3 != '' and $result and $result2) {
		$query3= "INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES ($row[resource_id], '$capabilities3' );";
		$result3 = mysqli_query($db, $query3);
	};
	if ($capabilities4 != '' and $result and $result2) {
		$query3= "INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES ($row[resource_id], '$capabilities4' );";
		$result3 = mysqli_query($db, $query3);
	};
	if ($capabilities5 != '' and $result and $result2) {
		$query3= "INSERT INTO cs6400_team02_summer2018.Capabilities (resource_id, capability) VALUES ($row[resource_id], '$capabilities5' );";
		$result3 = mysqli_query($db, $query3);
	};	

	foreach	($additional_esf as &$value) {
		$query4 = "INSERT INTO cs6400_team02_summer2018.AdditionalESF (resource_id,additional_esf_number) VALUES ($row[resource_id], $value );";
		$result4 = mysqli_query($db, $query4);
	
	}
	
	if ($result ) {
		header("location: MainMenu.php");
    }	
}

	
}

	
	
?>


<body>

	<br></br>
	
				<div class="container">
                <form action="AddResource.php" method="post" enctype="multipart/form-data">
                    <div class="title"><b>Add a Resource</b></div>
					* indicates a required field
					<br></br> 
				</div>	
										
                    <div class="login_form_row">
                        <label class="add_resource"><b>Resource Name *</b> &nbsp;&nbsp;&nbsp;</label>
                        <input type="text" name="resource_name"  class="add_resource" value="<?php echo isset($_POST['resource_name']) ? $_POST['resource_name'] : '' ?>"  />
						<?php
							echo "<font color='red'>$err_resource_name<font color='black'>" ;
						 ?>
					</div>
		<br></br> 
		
                    <div class="login_form_row">
                        <label class="model"><b>Model </b> &nbsp;&nbsp;&nbsp;</label>
                        <input type="text" name="model"  class="add_resource" value="<?php echo isset($_POST['model']) ? $_POST['model'] : '' ?>"  />
					</div>
					
		<br></br> 		
		
					<div class="form-group">
					  <label for="primESF"><b>Primary ESF *</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
						<select name="primESF">
						
						 <?php
						        $query = "SELECT ESF_number as ESF_no, concat('(#',trim(cast(ESF_number as char(2))),') ' ,ESF_Description) as ESF FROM dimESF";
								$result = mysqli_query($db, $query);
								echo "<option value='Select Primary ESF'>Select Primary ESF</option>";
								while ($row = mysqli_fetch_array($result)) {
										echo '<option value="' . $row['ESF_no'] . '">'.  $row['ESF']  . '</option>"';
								}
						 ?>
						 </select>
						<?php
							echo "<font color='red'>$err_primESF<font color='black'>" ;
						 ?>
					</div>
					
			<br></br> 		
					<div class="form-group">
					  <label for="additionalESF"><b>Additional ESF </b> &nbsp;&nbsp;&nbsp;&nbsp; </label>
						<select name="additionalESF[]" multiple="multiple">
						
						 <?php
						        $query = "SELECT ESF_number as ESF_no, concat('(#',trim(cast(ESF_number as char(2))),') ' ,ESF_Description) as ESF FROM dimESF";
								$result = mysqli_query($db, $query);
								while ($row = mysqli_fetch_array($result)) {
										echo '<option value="' . $row['ESF_no'] . '">'.  $row['ESF']  . '</option>"';
								}
						 ?>
						 </select>
					</div>					
					
					<br></br> 
					
                    <div class="form-group">
                        <label class="capability"><b>Capabilities: </b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                        <input type="textarea" id="capabilities1" name="capabilities1"  value="<?php echo isset($_POST['capabilities1']) ? $_POST['capabilities1'] : '' ?>"  class="add_resource"  maxlength="75" /><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <input type="textarea" id="capabilities2" name="capabilities2"  value="<?php echo isset($_POST['capabilities2']) ? $_POST['capabilities2'] : '' ?>"  class="add_resource"  maxlength="75" /><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <input type="textarea" id="capabilities3" name="capabilities3"  value="<?php echo isset($_POST['capabilities3']) ? $_POST['capabilities3'] : '' ?>"  class="add_resource"  maxlength="75" /><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <input type="textarea" id="capabilities4" name="capabilities4"  value="<?php echo isset($_POST['capabilities4']) ? $_POST['capabilities4'] : '' ?>"  class="add_resource"  maxlength="75" /><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <input type="textarea" id="capabilities5" name="capabilities5"  value="<?php echo isset($_POST['capabilities5']) ? $_POST['capabilities5'] : '' ?>"  class="add_resource"  maxlength="75" />
		
                    </div>
					
					<br></br> 
					<b>Home Location: *</b>

                    <div class="login_form_row">
                        <label class="add_resource">Latitude &nbsp; &nbsp; &nbsp;&nbsp;</label>
                        <input type="text" name="latitude"  class="add_resource"  placeholder="00.0000" value="<?php echo isset($_POST['latitude']) ? $_POST['latitude'] : '' ?>"/>
						<?php
							echo "<font color='red'>$err_latitude<font color='black'>" ;
						 ?>

                    <div class="login_form_row">
                        <label class="add_resource">Longitude &nbsp;&nbsp;&nbsp;</label>
                        <input type="text" name="longitude"  class="add_resource"  placeholder="00.0000" value="<?php echo isset($_POST['longitude']) ? $_POST['longitude'] : '' ?>" />
						<?php
							echo "<font color='red'>$err_longitude<font color='black'>" ;
						 ?>
					</div>
					<br></br> 
					
                    <div class="login_form_row">
                        <label class="add_resource"><b>Max Distance *</b> &nbsp;&nbsp;&nbsp;</label>
                        <input type="text" name="max_dist"  class="add_resource" value="<?php echo isset($_POST['max_dist']) ? $_POST['max_dist'] : '' ?>"  />
                         kilometers
						<?php
							echo "<font color='red'>$err_max_dist<font color='black'>" ;
						 ?>						 
					</div>
					
					<br></br> 									
					
					
                    <div class="login_form_row">
					
                        <label class="add_resource"><b>Cost *</b> &nbsp;&nbsp;&nbsp;</label> $
                        <input type="text" name="cost"  class="add_resource" value="<?php echo isset($_POST['cost']) ? $_POST['cost'] : '' ?>"  /> per 
					
                        <select name="time_unit">
						
						 <?php
						        $query = "SELECT time_unit FROM cost_unit";
								$result = mysqli_query($db, $query);
								while ($row = mysqli_fetch_array($result)) {
										echo '<option value="' . $row['time_unit'] . '">'.  $row['time_unit']  . '</option>"';
								}
						 ?>
						 </select>
						<?php
							echo "<font color='red'>$err_cost<font color='black'>" ;
						 ?>									
                         
					</div>					
					
					
					
					
					<br></br> 
						  <button type="submit" value="Submit">Submit</button>

                <form/>
                </div>
		<br></br>
		<br></br>		


	
	
	
	
	
	
<!--Will not necessarily keep links to all other pages, but at least for the dev part it is useful for me-->
<b>Links</b>
<li> <a href='MainMenu.php'>Main Menu</a> </li>
<li> <a href='AddResource.php'>Add Resource</a> </li>
<li> <a href='AddIncident.php'>Add Emergency Incident	</a> </li>
<li> <a href='SearchResources.php'>Search For and Request Resources</a> </li><li> <a href='ResourceStatus.php'>Resource Status</a> </li>
<li> <a href='ResourceReport.php'>Resource Report</a> </li>
<li> <a href='LogOut.php'>LogOut</a> </li>
 
</body>
