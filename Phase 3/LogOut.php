<?php

include('dbConnect.php');

if (!isset($_SESSION['username'])) {
	 unset($_SESSION['username']);
	 header(REFRESH_TIME . 'url=login.php');
	exit();
}
unset($_SESSION['username']);
header(REFRESH_TIME . 'url=login.php');

?>