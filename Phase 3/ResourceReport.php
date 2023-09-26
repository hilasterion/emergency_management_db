
<body>
    <div id="main_container">
        <div id="header">
            <div class="logo">
                <img src="img/ERMSlogo.gif" style="opacity:0.5;background-color:E9E5E2;" border="0" alt="" title="ERMS Logo"/>
            </div>
        </div>
	</div>
	<br></br>
	<h2> Resource Report </h2>
	<br></br>	
</body>


<?php

include('dbConnect.php');

if (!isset($_SESSION['username'])) {
	header('Location: login.php');
	exit();
}

echo " $_SESSION[name] — Resource Report by Primary Emergency Support Function";
echo "	<br></br>";


        $query = "SELECT " .
		"  dimESF.ESF_number " .
		", dimESF.ESF_description  " . 
		", sum(case when ERMSResource.resource_owner= '$_SESSION[username]' then 1 else 0 end ) as Total_Resources " .
        ", sum(case when ERMSResource.resource_owner= '$_SESSION[username]' and ERMSResource.Status = 'In Use' then 1 else 0 end ) as Resources_in_Use " .
		"from dimESF " .
		"left join ERMSResource  on ERMSResource.primary_ESF_number = dimESF.ESF_number " . 
        "group by 1,2 " . 
        "order by 1 " . 
        "; ";
//  echo "$query";
        $result = mysqli_query($db, $query);
	   		
$report_array = [];
while($row = mysqli_fetch_array($result))
{    
    $report_array[] = $row;
}



        $query = "SELECT " .
		"  ' '  as  ESF_number " .
		", 'Total'  as ESF_description  " . 
		", sum(case when ERMSResource.resource_owner= '$_SESSION[username]' then 1 else 0 end ) as Total_Resources " .
        ", sum(case when ERMSResource.resource_owner= '$_SESSION[username]' and ERMSResource.Status = 'In Use' then 1 else 0 end ) as Resources_in_Use " .
		"from dimESF " .
		"left join ERMSResource  on ERMSResource.primary_ESF_number = dimESF.ESF_number " . 
        "; ";
//  echo "$query";
        $result2 = mysqli_query($db, $query);
	   		
while($row = mysqli_fetch_array($result2))
{    
    $report_array[] = $row;
}




 ?>
 
  
 
 <body>
 
 
 <style>
table, th, td {
    border: 1px solid black;
}
</style>

 <table align='center'>
  <thead>
    <tr bgcolor="#d3d3d3">
      <th>ESF # </th>
	  <th>Primary Emergency Support Function </th>
	  <th>Total Resources </th>
	  <th>Resources in Use </th>
    </tr>
  </thead>
    <tbody>
<?php foreach ($report_array as $k => $row) {
    echo "<tr"; 
		if ($k == 15) {
        echo " bgcolor='#DCDCDC'";
	} else
	    if ($k % 2 == 0) {
        echo " bgcolor='#FFFFFF'";
    } 
    else {
        echo " bgcolor='#F5F5F5'";
    }

	echo ">";
	
    echo "<td>"; if ($k == 15) {echo "<b>";} echo "$row[ESF_number]";       if ($k == 15) {echo "</b>";} echo "</td>";
    echo "<td>"; if ($k == 15) {echo "<b>";} echo "$row[ESF_description]";  if ($k == 15) {echo "</b>";} echo " </td>";
    echo "<td>"; if ($k == 15) {echo "<b>";} echo "$row[Total_Resources]";  if ($k == 15) {echo "</b>";} echo " </td>";
    echo "<td>"; if ($k == 15) {echo "<b>";} echo "$row[Resources_in_Use]"; if ($k == 15) {echo "</b>";} echo " </td>";
    echo "</tr>";

}
?>
  </tbody>
</table>
 
  
 
<b>Links</b>
<li> <a href='MainMenu.php'>Main Menu</a> </li>
<li> <a href='AddResource.php'>Add Resource</a> </li>
<li> <a href='AddIncident.php'>Add Emergency Incident	</a> </li>
<li> <a href='SearchResources.php'>Search For and Request Resources</a> </li><li> <a href='ResourceStatus.php'>Resource Status</a> </li>
<li> <a href='ResourceReport.php'>Resource Report</a> </li>
<li> <a href='LogOut.php'>LogOut</a> </li>

 
</body>