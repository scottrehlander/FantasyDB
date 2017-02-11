<?php session_start(); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>FantasyDB</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/template/1.css" rel="stylesheet" type="text/css" />
<link href="/fantasydbWEB/template/1.css" rel="stylesheet" type="text/css" />
</head>
<body>
  <?php
	$con = mysql_connect("db550.perfora.net", "dbo199011162", "UMkPUSvq");
	if(!$con)
		die(mysql_error());
		 
	mysql_select_db("db199011162", $con) ;	
			
	if(	empty($_SESSION['userName']))
	{
 		$password = $_POST['password'];
		$userName = $_POST['userName'];
	
		$con = mysql_connect("db550.perfora.net", "dbo199011162", "UMkPUSvq");
		if(!$con)
			die(mysql_error());
		 
		mysql_select_db("db199011162", $con) ;	
	
		if(!empty($userName))
		{
			$result = mysql_query("SELECT * FROM users WHERE UserName = '" . $userName . "'", $con) or die(mysql_error()); 	
			$row = mysql_fetch_array( $result );
	
			if( !empty($row) )
			{
				//User found, check password
				if($password != $row['UserPassword'])
					die("Password not correct.");
			}
			else
			{
				die("User $username not found.");
			}
	
			//If we have not quit yet, the user was succesffuly authenticated
			$_SESSION['userName'] = $userName;
			$_SESSION['teamID'] = $row['TeamID'];
		}
	}
	else
	{
		$userName = $_SESSION['userName'];
		$teamID = $_SESSION['teamID'];
	}
?>
<div id="container">
	<div id="banner" ><img src="fdb.gif" width="414" height="66">
 		<h1 class="TopAndBottomSpacers">
			<?php
			if(empty($userName))
			{
				echo("<form id=\"loginForm\" name=\"loginForm\" method=\"post\" action=\"main.php\">
			  	Login: 
		        	<input name=\"userName\" value=\"Username\" type=\"text\" id=\"userName\"  class=\"loginBoxes\"/>
		    	<input name=\"password\" type=\"password\" id=\"password\"  class=\"loginBoxes\"/>
		    	<input type=\"submit\" name=\"submit\" value=\"Log in\" style=\"background-color:#0099CC;color:#FFFFFF;border:none;\" />
				</form>");
			}
			else
			{
				echo("<form name=\"logoutForm\" method=\"post\" action=\"main.php\"> 
				Welcome " . $userName . 
				"<input type=\"submit\" name=\"logout\" value=\"[ logout ]\" style=\"background-color:#0099CC;color:#FFFFFF;border:none;font-size:8pt;\" />
				</form>");
			}
			?>
		</h1>
  </div>
	<div id="left">
		<div align="center">
		  <?php
			$result = mysql_query("SELECT * FROM navigation", $con) or die(mysql_error()); 	
			
			echo("<table width=\"93%\" border=\"0\" cellspacing=\"10\" cellpadding=\"0\">");
			while($row = mysql_fetch_array( $result ))
			{
				echo("<tr><td align=\"center\"><a href=\"" . $row["Link"] . "\">" . $row["Text"] . "</a></td></tr>");
			}
			echo("</table>");
			?>
	  </div>
	</div>
  <div id="content" align="center">
		<?php
	
	$con = mysql_connect("db550.perfora.net", "dbo199011162", "UMkPUSvq");
	if(!$con)
		die(mysql_error());
	 
	mysql_select_db("db199011162", $con) ;
		
	$MemberID = $_GET['MemberID'];
	
	$sql = "SELECT * FROM competitors WHERE CompetitorID = $MemberID";
	$sqlResult = mysql_query($sql, $con) or die("Unexpected Database Error");
	$memberDetails = mysql_fetch_array($sqlResult);
	$MemberName = $memberDetails['CompetitorName'];
	
	$sql = "SELECT * FROM eventresults WHERE CompetitorID = $MemberID";
	$sqlResult = mysql_query($sql, $con) or die("Unexpected Database Error");	
	
	echo("<p align=\"left\"><b>$MemberName:</b></p>");
	echo("<table width=80% cellspacing=0 cellpadding=0 border=1\"><tr bgcolor=\"black\" class=\"contentTableHeader\"><td>Event</td><td>Class</td><td>Place</td><td>Score</td></tr>");
	
	while($eventResult = mysql_fetch_array( $sqlResult ))
	{
		$sql = "SELECT * FROM events WHERE EventID = " . $eventResult['EventID'];
		$eventIDResult = mysql_query($sql, $con) or die("Unexpected Database Error");
		$eventDeatils = mysql_fetch_array($eventIDResult);
		$eventName = $eventDeatils['EventName'];
		$eventDate = $eventDeatils['EventDate'];
		$isMulti = $eventDeatils['IsMulti'];

		if($odd == true)
		{		
			echo("<tr class=\"contentTableRowInvert\"><td>$eventName, $eventDate</td><td>" . $eventResult['Class'] . "</td><td>" . $eventResult['Place'] . "</td><td>" . $eventResult['Score']  . "</td></tr>");	
			$odd = false;
			}
		else
		{
			echo("<tr><td>$eventName, $eventDate</td><td>" . $eventResult['Class'] . "</td><td>" . $eventResult['Place'] . "</td><td>" . $eventResult['Score']  . "</td></tr>");	
			$odd = true;
		}	
	}
	echo("</table><br><br>");
	echo("<a class=\"invert\" href=\"Manage.php?addMemberID=$MemberID\">Add This Competitor To Your Team</a>");
?>

  </div>
 	<div id="footer">
 	  <h1 class="TopAndBottomSpacers">copyright scott rehlander technologies all rights reserved 2007 </h1>
 	</div>
</div>
</body>
</html>