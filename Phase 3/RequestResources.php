
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


<?php                                   // NOT SURE IF WE WILL NEED THIS OR NOT

include('dbConnect.php');

if (!isset($_SESSION['username'])) {
	header('Location: login.php');
	exit();
}


echo "Additional PHP and SQL here";
echo "<br></br>";
 
	
 ?>
 <body>
 
 
 
 
 
 
 
 
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