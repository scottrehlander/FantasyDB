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
<div id="container">
	<div id="banner" ><img src="fdb.gif" width="414" height="66">
 		<h1 class="TopAndBottomSpacers">
			<?php
			$con = mysql_connect("db550.perfora.net", "dbo199011162", "UMkPUSvq");
			if(!$con)
				die(mysql_error());
		 
			mysql_select_db("db199011162", $con) ;	
		
			$userName = $_SESSION['userName'];
			
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
		
		$sql = "SELECT * FROM users ORDER BY ScoreYTD DESC";
		$result = mysql_query($sql, $con) or die(mysql_error()); 
		
		echo("<h2> Top teams:</h2>");
		echo("<table width=80% cellspacing=0 cellpadding=0 border=1><tr class=\"contentTableHeader\"><td>User</td><td>Score</td><td>Action</td>");
		
		for($i = 0; $i < 10; $i++)
		{
			$row = mysql_fetch_array($result);
			if($i % 2 == 1)
				echo("<tr class=\"contentTableRowInvert\"><td>" . $row['UserName'] . "</td><td>" . $row['ScoreYTD'] . "</td><td><a class=\"invert\" href=\"ViewTeams.php?TeamID= " . $row['TeamID'] . "&teamOwner=" . $row["UserName"] . "\">View Team</a></td>");
			else
				echo("<tr><td>" . $row['UserName'] . "</td><td>" . $row['ScoreYTD'] . "</td><td><a class=\"invert\" href=\"ViewTeams.php?TeamID= " . $row['TeamID'] . "&teamOwner=" . $row["UserName"] . "\">View Team</a></td>");
			
		}
		
		echo("</table>");
			 
	 ?>
	 
  </div>
 	<div id="footer">
 	  <h1 class="TopAndBottomSpacers">copyright scott rehlander technologies all rights reserved 2007 </h1>
 	</div>
</div>
</body>
</html>