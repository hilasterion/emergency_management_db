
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
  
$query = "SELECT a.username , a.name , case when b.username is not NULL then 'Municipality' when c.username is not NULL then 'GovernmentAgency'	 when d.username is not NULL then 'Company'	 else 'Individual' end as user_type, b.category , concat(c.agency_name, ' - ', c.local_office) as agency_office , d.hq_location , d.number_of_employees	 FROM ERMSuser as a left join Municipality as b on a.username=b.username left join GovernmentAgency as c on a.username=c.username left join Company as d on a.username=d.username WHERE a.username='$_SESSION[username]'";


 
$result = mysqli_query($db, $query);
$row = mysqli_fetch_array($result, MYSQLI_ASSOC);
 
$test=$row['user_type'];


$_SESSION['name'] = $row['name'];

echo nl2br("Welcome: $row[name]");
echo "<br>";

if ($row['user_type'] == 'Municipality') {
	echo "Municipality Category: $row[category]";
    }
if ($row['user_type'] == 'GovernmentAgency') {
	echo "Agency/Local Office: $row[agency_office]";
    }
if ($row['user_type'] == 'Company') {
	echo "HQ Location: $row[hq_location]";
	echo "<br>";
	echo "Number of Employees: ";
	echo number_format($row['number_of_employees']);
    }

echo "<br>";
echo "<br>";
echo "<b>Main Menu</b>";
	echo "<li> <a href='AddResource.php'>Add Resource</a> </li>";
	echo "<li> <a href='AddIncident.php'>Add Emergency Incident	</a> </li>";
	echo "<li> <a href='SearchResources.php'>Search for and Request Resources</a> </li>";
	echo "<li> <a href='ResourceStatus.php'>Resource Status</a> </li>";
	echo "<li> <a href='ResourceReport.php'>Resource Report</a> </li>";
	echo "<li> <a href='LogOut.php'>LogOut</a> </li>";
	
	
	
	
?>