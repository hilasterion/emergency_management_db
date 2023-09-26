
<body>
    <div id="main_container">
        <div id="header">
            <div class="logo">
                <img src="img/ERMSlogo.gif" style="opacity:0.5;background-color:E9E5E2;" border="0" alt="" title="ERMS Logo"/>
            </div>
        </div>
	</div>
	<br></br>
</body>


<?php 

include('dbConnect.php');

if (!isset($_SESSION['username'])) {
	header('Location: login.php');
	exit();
}

echo "<br></br>";
 
 

if( $_SERVER['REQUEST_METHOD'] == 'POST') {
	
	

		$err_return_date='';
$temp_date = strtotime($_POST['date_to_return_by']);

if (empty($_POST['date_to_return_by'])) {
	$err_return_date="Please Enter a Return Date";
} else
      if ($temp_date) {
  $sql_return_date = date('Y-m-d', $temp_date);
  //echo sql_return_date;
 } else {	
	$err_return_date="Please Enter a Valid Return Date with the format YYYY-MM-DD";

}




}



		
 
 
 
 
 
 
 
 
 
 
 
 
 
 

//$search_criteria = array_map('dealWithEmpties', $_SESSION['SearchData']);

$search_criteria = $_SESSION['SearchData'];
//print_r($search_criteria);
//unset ($_SESSION['SearchData'] );
	 
if ($search_criteria['search_location'] == '') {
	$search_criteria['search_location'] =-1;
}


$search_keyword = mysqli_real_escape_string($db, $search_criteria['searchkeyword']);
$search_ESF = mysqli_real_escape_string($db, $search_criteria['searchESF']);
$search_location= mysqli_real_escape_string($db, $search_criteria['search_location']);
$search_incident = mysqli_real_escape_string($db, $search_criteria['searchIncident']);
 
if ($search_incident != '') {
	          echo "<h2> Search Results for Incident: $search_incident</h2>";
	} else {  echo "<h2>Search Results</h2><br></br>";
    }
	

       $queryIncident = 
" SELECT distinct" . 
"  ERMSResource.resource_id " . 
", ERMSResource.resource_name "  . 
", ERMSUser.name as resource_owner_name" .
", ERMSResource.status "  . 
", case when Request.exp_return_date IS NULL then 'Now' else DATE_FORMAT(Request.exp_return_date,'%Y-%m-%d') end as Next_Available" . 
", case when ERMSResource.resource_owner = '$_SESSION[username]' then 1 else 0 end as self_owned " . 
", concat(cast(ERMSResource.dollars as char(20)),'/',ERMSResource.time_unit) as formatted_cost" ;

if ($search_incident == '') {
	$queryIncident .=" , 0 as distance ";
} else {
	$queryIncident .= " , cast(ACOS(SIN(PI()*(Incident.latitude)/180.0) * SIN(PI()*(ERMSResource.latitude)/180.0) + COS(PI()*(Incident.latitude)/180.0) * COS(PI()*(ERMSResource.latitude)/180.0) * COS(PI()*(ERMSResource.longitude)/180.0 - PI()*(Incident.longitude)/180.0))*6371 as decimal(6,1)) as distance ";
}
 
$queryIncident .=
"FROM  " .
"           ERMSResource   " .
"INNER JOIN ERMSUser     on ERMSResource.resource_owner = ERMSUser.username " .
"LEFT JOIN  (select * from Request where date_request_accepted is NOT NULL and actual_return_date IS NULL) as Request     on ERMSResource.resource_id = Request.resource_id ";

if ($search_incident != '') {
	$queryIncident .=
	" LEFT JOIN (select * from Incident WHERE concat( '(', incident_type,'-', trim( cast(Incident_number  as char(20)) ) ,') ', incident_description ) = '$search_incident' ) as Incident on 1=1";
};  




if ($search_ESF != '' OR $search_keyword != '' or $search_incident != '') {
	$queryIncident .=" WHERE 1=1 ";
};


if ($search_keyword == '') {
	$queryIncident .="   ";
} else {
	$queryIncident .= 
" and " .
"   ERMSResource.Resource_id in (select distinct resource_id from " . 
"                                     (select resource_id  from ERMSResource WHERE upper(resource_name) like upper('%$search_keyword%') or upper(model) like upper('%$search_keyword%') " . 
"                                       UNION " .
"                                      select resource_id  from Capabilities WHERE upper(capability) like upper('%$search_keyword%')   ) z" . 
"                                     )  ";
};  


if ($search_location !=-1) {
	$queryIncident .=
	" AND ACOS(SIN(PI()*(Incident.latitude)/180.0) * SIN(PI()*(ERMSResource.latitude)/180.0) + COS(PI()*(Incident.latitude)/180.0) * COS(PI()*(ERMSResource.latitude)/180.0) * COS(PI()*(ERMSResource.longitude)/180.0 - PI()*(Incident.longitude)/180.0))*6371 <= $search_location ";
}


if ($search_ESF != '') {
	$queryIncident .=
" AND ERMSResource.Resource_id in (select distinct resource_id from " . 
"                                       (select resource_id  from ERMSResource WHERE primary_ESF_number = $search_ESF " . 
"                                     UNION " .
"                                       select resource_id  from AdditionalESF WHERE additional_esf_number = $search_ESF) d " . 
"                                    ) ";
};

$queryIncident .=" ORDER BY Distance, ERMSResource.resource_name " ;



 
//echo "$queryIncident";



$result = mysqli_query($db, $queryIncident);
	   		
$search_array = [];
while($row = mysqli_fetch_array($result))
{    
    $search_array[] = $row;
}
 
?>
 
 
 <body>
 						<?php	echo "<font color='red'>$err_return_date<font color='black'>" ; ?>

 
 <form action='SearchResults.php' method='post' id="return">
 <table align='center'>
  <thead>
    <tr bgcolor="#d3d3d3">
      <th>ID </th>
	  <th>Resource Name </th>
	  <th>Resource Owner</th>
	  <th>Cost</th>
	  <th>Current Status</th>
	  <th>Next Available</th>
	  <?php if ($search_incident != '') { 
	  echo "<th>Distance</th>";
	  echo "<th>Action</th>";
	  echo "<th>Expected Return Date</th>";
	  }
	  ?>
    </tr>
  </thead>
    <tbody>
<?php foreach ($search_array as $k => $row) {
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
    echo "<td>";  echo "$row[resource_owner_name]";  echo " </td>";
	echo "<td>";  echo "$row[formatted_cost]";  echo " </td>";
    echo "<td>";  echo "$row[status]";  echo " </td>";
    echo "<td>";  echo "$row[Next_Available]";  echo " </td>";
 if ($search_incident != '') { 
	echo "<td>";  echo "$row[distance]";  echo " </td>";
    echo "<td> ";
	
	if ($row['self_owned']==1)
	{
    echo "<button type='submit' name='Deploy' value='"; 
	echo                                      "$row[resource_id]"; 
	echo                                                            "'>Deploy</button> ";
	} else {
    echo "<button type='submit' name='Request' value='"; 
	echo                                      "$row[resource_id]"; 
	echo                                                            "'>Request</button> ";
	}
	echo "</td>";
    echo "<td>  
	              <input type='text' name='date_to_return_by'/>
         </td>";
	  }
	  
    echo "</tr>";						 
						  
   
}
?>
  </tbody>
</table>
 </form>
 
 
 
 
 
 
 <br></br> 
<!--Will not necessarily keep links to all other pages, but at least for the dev part it is useful for me-->
<b>Links</b>
<li> <a href='MainMenu.php'>Main Menu</a> </li>
<li> <a href='AddResource.php'>Add Resource</a> </li>
<li> <a href='AddIncident.php'>Add Emergency Incident	</a> </li>
<li> <a href='SearchResources.php'>Search For and Request Resources</a> </li>
<li> <a href='ResourceStatus.php'>Resource Status</a> </li>
<li> <a href='ResourceReport.php'>Resource Report</a> </li>
<li> <a href='LogOut.php'>LogOut</a> </li>
</body>

<?php 
 function dealWithEmpties($var)
{
  return ($var === '') ? NULL : $var;
}
?>