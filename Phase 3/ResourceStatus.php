
<body>
    <div id="main_container">
        <div id="header">
            <div class="logo">
                <img src="img/ERMSlogo.gif" style="opacity:0.5;background-color:E9E5E2;" border="0" alt="" title="ERMS Logo"/>
            </div>
        </div>
	</div>
</body>


<?php
include('dbConnect.php');
if (!isset($_SESSION['username'])) {
	header('Location: login.php');
	exit();
}

$returnedRequestID = mysqli_real_escape_string($db, $_POST['Return']);
$canceledRequestID = mysqli_real_escape_string($db, $_POST['Cancel']);
$deployRequestID =   mysqli_real_escape_string($db, $_POST['Deploy']);
$rejectRequestID =   mysqli_real_escape_string($db, $_POST['Reject']);



if(isset($_POST['Return']))
    {
     $return_query =
        " UPDATE cs6400_team02_summer2018.ERMSResource " . 
		" set Status        = 'Available' " .
		"   , date_deployed = NULL  " .
        "  where resource_id =  (select resource_id from cs6400_team02_summer2018.Request where request_id = $returnedRequestID) " ;
		
			$result2 = mysqli_query($db, $return_query);

			
	$return_query =
		"UPDATE cs6400_team02_summer2018.Request " .
        " set actual_return_date = DATE(NOW()) " . 
        "  where request_id = $returnedRequestID ";
		
			$result3 = mysqli_query($db, $return_query);

	unset($_POST['Return']);

	}
	
	
	
	
if(isset($_POST['Cancel']))
    { 
     $cancel_query =
        " DELETE FROM Request " . 
        "  where request_id = $canceledRequestID  " ;
 				$result3 = mysqli_query($db, $cancel_query);
		unset($_POST['Cancel']);

	}
	
	

		// Code that will accept a specific request for a resource the user owns

if(isset($_POST['Deploy']))
    { 
    
   $deploy_query =
        " UPDATE cs6400_team02_summer2018.ERMSResource " . 
		" set Status        = 'In Use' " .
		"   , date_deployed = DATE(NOW())  " .
        "  where resource_id = (select resource_id from cs6400_team02_summer2018.Request where request_id = $deployRequestID) " ;
//echo $deploy_query;
			$result2 = mysqli_query($db, $deploy_query);

			
	$deploy_query =
		"UPDATE cs6400_team02_summer2018.Request " .
        " set date_request_accepted = DATE(NOW()) " . 
        "  where request_id = $deployRequestID ";
//echo $deploy_query;

		$result3 = mysqli_query($db, $deploy_query);
		unset($_POST['Deploy']);

	}
	
	
	
	// Code that will delete a specific request for a resource the user owns
		
if(isset($_POST['Reject']))
    {
     $reject_query =
        " DELETE FROM Request " . 
        "  where Request.request_id = $rejectRequestID " ;

		$result3 = mysqli_query($db, $reject_query);
		unset($_POST['Reject']);

	}
	
	
	
	




      // Find Resources in Use by Me
$query = 
"SELECT " . 
"  ERMSResource.resource_id " . 
", ERMSResource.resource_name "  . 
", Incident.incident_description " .
", ERMSUser.name " .
", Request.request_id " .
", date(Request.request_start_date) as request_start_date " .
", date(Request.exp_return_date) as exp_return_date " .
"FROM  " .
"           ERMSResource  " .
"INNER JOIN Request      on ERMSResource.resource_id = Request.resource_id " .
"INNER JOIN ERMSUser     on Request.resource_owner = ERMSUser.username " .
"INNER JOIN Incident     on Request.incident_number = Incident.incident_number  and Request.incident_type = Incident.incident_type  " .
"WHERE Request.date_request_accepted is NOT NULL and Request.actual_return_date IS NULL and " . // AKA, IN USE
"      Incident.incident_owner ='$_SESSION[username]'  " .
" order by 1 ";


$result = mysqli_query($db, $query);
	   		
$status_array = [];
while($row = mysqli_fetch_array($result))
{    
    $status_array[] = $row;
}





// Requested by Me
$query = 
"SELECT " . 
"  ERMSResource.resource_id " . 
", ERMSResource.resource_name "  . 
", Incident.incident_description " .
", ERMSUser.name " .
", Request.request_id " .
", date(Request.request_start_date) as request_start_date " .
", date(Request.exp_return_date) as exp_return_date " .
"FROM  " .
"           ERMSResource  " .
"INNER JOIN Request      on ERMSResource.resource_id = Request.resource_id " .
"INNER JOIN ERMSUser     on Request.resource_owner = ERMSUser.username " .
"INNER JOIN Incident     on Request.incident_number = Incident.incident_number  and Request.incident_type = Incident.incident_type  " .
"WHERE Request.date_request_accepted is NULL and " . // AKA, still pending
"      Incident.incident_owner ='$_SESSION[username]'  " .
" order by 1 ";


$result = mysqli_query($db, $query);
	   		
$requested_array = [];
while($row = mysqli_fetch_array($result))
{    
    $requested_array[] = $row;
}





// Requested of Me
$query = 
"SELECT " . 
"  ERMSResource.resource_id " . 
", ERMSResource.resource_name "  . 
", Incident.incident_description " .
", ERMSUser.name " .
", Request.request_id " .
", date(Request.request_start_date) as request_start_date " .
", date(Request.exp_return_date) as exp_return_date " .
"FROM  " .
"           ERMSResource  " .
"INNER JOIN Request      on ERMSResource.resource_id = Request.resource_id " .
"INNER JOIN Incident     on Request.incident_number = Incident.incident_number  and Request.incident_type = Incident.incident_type  " .
"INNER JOIN ERMSUser     on Incident.incident_owner = ERMSUser.username " .
"WHERE Request.date_request_accepted is NULL and " . // AKA, still pending
"      ERMSResource.resource_owner ='$_SESSION[username]'  " .
" order by 1 ";

//echo $query;
$result = mysqli_query($db, $query);
	   		
$received_array = [];
while($row = mysqli_fetch_array($result))
{    
    $received_array[] = $row;
}



$allUsedResources = "SELECT  resource_id from ERMSResource WHERE status='In Use'";

$result = mysqli_query($db, $allUsedResources);
	   		
$usedResources_array = [];
while($row = mysqli_fetch_array($result))
{    
    $usedResources_array[] = $row['resource_id'];
}

 ?>

 
 
 <body>
 
<h2>Resource Status</h2>

<h3>Resources In Use</h3>
  <style>
table, th, td {
    border: 1px solid black;
}
</style>
<form action='ResourceStatus.php' method='post' id="return">
 <table align='center'>
  <thead>
    <tr bgcolor="#d3d3d3">
      <th>ID </th>
	  <th>Resource Name </th>
	  <th>Responding to Incident</th>
	  <th>Resource Owner </th>
	  <th>Start Date </th>
	  <th>Return By </th>
	  <th>Action </th>
    </tr>
  </thead>
    <tbody>
<?php foreach ($status_array as $k => $row) {
    echo "<tr"; 
	if ($k % 2 == 0) {
        echo " bgcolor='#FFFFFF'";
    } 
    else {
        echo " bgcolor='#F5F5F5'";
    }

	echo ">";
	
    echo "<td>";  echo "$row[resource_id]";  echo " </td>";
    echo "<td>";  echo "$row[resource_name]";  echo " </td>";
    echo "<td>";  echo "$row[incident_description]";  echo " </td>";
    echo "<td>";  echo "$row[name]";  echo " </td>";
    echo "<td>";  echo "$row[request_start_date]";  echo " </td>";
    echo "<td>";  echo "$row[exp_return_date]";  echo " </td>";
    echo "<td>  <button type='submit' name='Return' value='"; 
	echo                                      "$row[request_id]"; 
	echo                                                            "'> Return</button> </td>";
	
    echo                                                                                                                   "</tr>";

}
?>
  </tbody>
</table>
  </form>
 
 
 
 
 
 
 
<br></br>
<h3>Resources Requested by Me</h3>

<form action='ResourceStatus.php' method='post' id="return">

 <table align='center'>
  <thead>
    <tr bgcolor="#d3d3d3">
      <th>ID </th>
	  <th>Resource Name </th>
	  <th>Requested for Incident</th>
	  <th>Resource Owner </th>
	  <th>Return By </th>
	  <th>Action </th>
    </tr>
  </thead>
    <tbody>
<?php foreach ($requested_array as $k => $row) {
    echo "<tr"; 
	if ($k % 2 == 0) {
        echo " bgcolor='#FFFFFF'";
    } 
    else {
        echo " bgcolor='#F5F5F5'";
    }

	echo ">";
	
    echo "<td>";  echo "$row[resource_id]";  echo " </td>";
    echo "<td>";  echo "$row[resource_name]";  echo " </td>";
    echo "<td>";  echo "$row[incident_description]";  echo " </td>";
    echo "<td>";  echo "$row[name]";  echo " </td>";
    echo "<td>";  echo "$row[exp_return_date]";  echo " </td>";
    echo "<td>  <button type='submit' name='Cancel' value='"; 
	echo                                      "$row[request_id]"; 
	echo                                                            "'> Cancel</button> </td>";
	
    echo                                                                                                                   "</tr>";

}
?>
  </tbody>
</table>
   </form>

 

 
 
 
 
 
 
 
<br></br>
<h3>Resource Requests Received by Me</h3>
 <form action='ResourceStatus.php' method='post' id="return">
 <table align='center'>
  <thead>
    <tr bgcolor="#d3d3d3">
      <th>ID </th>
	  <th>Resource Name </th>
	  <th>Requested for Incident</th>
	  <th>Requesting User </th>
	  <th>Return By </th>
	  <th colspan="2">Action </th>
    </tr>
  </thead>
    <tbody>
<?php foreach ($received_array as $k => $row) {
    echo "<tr"; 
	if ($k % 2 == 0) {
        echo " bgcolor='#FFFFFF'";
    } 
    else {
        echo " bgcolor='#F5F5F5'";
    }

	echo ">";
	
    echo "<td>";  echo "$row[resource_id]";  echo " </td>";
    echo "<td>";  echo "$row[resource_name]";  echo " </td>";
    echo "<td>";  echo "$row[incident_description]";  echo " </td>";
    echo "<td>";  echo "$row[name]";  echo " </td>";
    echo "<td>";  echo "$row[exp_return_date]";  echo " </td>";
    echo "<td> ";
		if (false == in_array($row['resource_id'], $usedResources_array))
	{	
    echo "<button type='submit' name='Deploy' value='"; 
	echo                                      "$row[request_id]"; 
	echo                                                            "'>Deploy</button> ";
	} else {
		echo "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
	}
	echo "</td>";
    echo "<td>  <button type='submit' name='Reject' value='"; 
	echo                                      "$row[request_id]"; 
	echo                                                            "'>Reject</button> </td>";
	
    echo "</tr>";

}
?>
  </tbody>
</table>
 </form>
 

 <?php //echo '<pre>'; print_r($usedResources_array); echo '</pre>';  ?>
 
 
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