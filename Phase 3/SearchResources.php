
<body>
    <div id="main_container">
        <div id="header">
            <div class="logo">
                <img src="img/ERMSlogo.gif" style="opacity:0.5;background-color:E9E5E2;" border="0" alt="" title="ERMS Logo"/>
            </div>
        </div>
	</div>
	<br></br>
	<h2> Search for Resources</h2>
	<br></br>
</body>


<?php

include('dbConnect.php');

if (!isset($_SESSION['username'])) {
	header('Location: login.php');
	exit();
}
unset ($_SESSION['SearchData'] );


$err_search_location='';
$form_ok='';
if( $_SERVER['REQUEST_METHOD'] == 'POST') {
	
	

	if (!empty($_POST['search_location'] and !is_numeric($_POST['search_location']) )) {
		$err_search_location =" Please enter a number only, or leave blank" ;
	} 	
	 else if (!empty($_POST['search_location'] and empty($_POST['searchIncident']))) {
		$err_search_location =" Location search only valid with the selection of an incident" ;

	 }
		 else {
			 
			 $_SESSION['SearchData'] = $_POST;
             header(REFRESH_TIME . 'url=SearchResults.php');	
	}

}

 ?>
 
 
 <body>
 
 
 
 <form action="SearchResources.php" method="post" enctype="multipart/form-data">

                    <div class="search_Resources">
                        <label class="search_Resources"><b>Keyword</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                        <input type="text" name="searchkeyword"  class="search_Resources" value="<?php echo isset($_POST['searchkeyword']) ? $_POST['searchkeyword'] : '' ?>"  />

					</div>
 
 		<br></br> 
					
					<div class="form-group">
					  <label for="searchESF"><b>ESF </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
						<select name="searchESF">
						
						 <?php
						        $query = "SELECT ESF_number as ESF_no, concat('(#',trim(cast(ESF_number as char(2))),') ' ,ESF_Description) as ESF FROM dimESF";
								$result = mysqli_query($db, $query);
								echo "<option value=''></option>";
								while ($row = mysqli_fetch_array($result)) {
										echo '<option value="' . $row['ESF_no'] . '">'.  $row['ESF']  . '</option>"';
								}
						 ?>
						 </select>
					</div>

		<br></br> 

                    <div class="search_location">
                        <label class="search_Resources"><b>Location</b> &nbsp;&nbsp;&nbsp;&nbsp; Within &nbsp;&nbsp;&nbsp;&nbsp;</label>
                        <input type="text" name="search_location"  class="search_Resources" value="<?php echo isset($_POST['search_location']) ? $_POST['search_location'] : '' ?>"  /> &nbsp;&nbsp;&nbsp;&nbsp; kilometers of incident
						<?php
						    echo "<font color='red'>$err_search_location<font color='black'>" ;
						 ?>					
					</div>
 
 		<br></br> 
		
					<div class="form-group">
					  <label for="searchIncident"><b>Incident </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
						<select name="searchIncident">
						
						 <?php
 						        $query = "SELECT incident_type, incident_number, concat('(',incident_type,'-',trim(cast(Incident_number as char(20))),') ',incident_description) as incidentLong FROM Incident where incident_owner='$_SESSION[username]'";
								echo $query;
								$result = mysqli_query($db, $query);
								echo "<option value=''></option>";
								while ($row = mysqli_fetch_array($result)) {
										echo '<option value="' .  $row['incidentLong'] .'">'.  $row['incidentLong']  . '</option>"';
								}
						 ?>
						 </select>
					</div>
					<br></br> 
						  <button type="submit" value="Submit">Search</button>
					<br></br> 

</form>
 
 
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