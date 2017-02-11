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
			
	// If we are logging in
	if(	empty($_SESSION['userName']))
	{
 		$password = $_POST['password'];
		$userName = $_POST['userName'];
	
		if(!empty($userName))
		{
			$result = mysql_query("SELECT * FROM users WHERE UserName = '" . $userName . "'", $con) or die(mysql_error()); 	
			$row = mysql_fetch_array( $result );
	
			$userNameNotFound = false;
			$passwordNotCorrect = false;

			if( !empty($row) )
			{
				//User found, check password
				if($password != $row['UserPassword'])
			    	$passwordNotCorrect = true;
			}
			else
				$userNameNotFound = true;
	
			if(!$userNameNotFound && !$passwordNotCorrect)
			{
				// The user was succesffuly authenticated
				$_SESSION['userName'] = $userName;
				$_SESSION['teamID'] = $row['TeamID'];
			}
		}
	}
	else
	{		
		//Check to see if user just logged out
		if(!empty($_POST['logout']))
		{
			session_destroy();
			$userName = "";
			$teamID = "";
		}
		else
		{
			$userName = $_SESSION['userName'];
			$teamID = $_SESSION['teamID'];
		}
	}
?>
<div id="container">
	<div id="banner" ><img src="fdb.gif" width="414" height="66">
 		<h1 class="TopAndBottomSpacers">
			<?php
			if(empty($userName))
			{
				echo("<form name=\"loginForm\" method=\"post\" action=\"main.php\">");
			  	echo("Login: 
		        	<input name=\"userName\" value=\"Username\" type=\"text\" id=\"userName\"  class=\"loginBoxes\"/>
		    	<input name=\"password\" type=\"password\" id=\"password\"  class=\"loginBoxes\"/>
		    	<input type=\"submit\" name=\"submit\" value=\"Log in\" style=\"background-color:#0099CC;color:#FFFFFF;border:none;\" />
				</form>");
			}
			else
			{
				echo("<form name=\"loginForm\" method=\"post\" action=\"main.php\">");
				if($userNameNotFound)
					$displayLogin = true;
				if($passwordNotCorrect)
					$displayLogin = true;
								
				if($displayLogin)
				  	echo("Login: 
		        	<input name=\"userName\" value=\"Username\" type=\"text\" id=\"userName\"  class=\"loginBoxes\"/>
			    	<input name=\"password\" type=\"password\" id=\"password\"  class=\"loginBoxes\"/>
			    	<input type=\"submit\" name=\"submit\" value=\"Log in\" style=\"background-color:#0099CC;color:#FFFFFF;border:none;\" />
					</form>");					
				else				
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
				$target = "";
				if($row["Blank"] == 1)
					$target = "_Blank";
					
				echo("<tr><td align=\"center\"><a target=\"$target\" href=\"" . $row["Link"] . "\">" . $row["Text"] . "</a></td></tr>");
			}
			echo("</table>");
			?>
			
	  </div>
	</div>
  <div id="content">
    <table><tr><td>
	<h2>Game Summary</h2>
	<p>FantasySPL is a game in which you choose five members from the SPL community to score your points for you.  From the comfort of your own home, you can enjoy the competitive action that some of these competitors drive cross-country for.</p>
	<h3><font color="white">..</font>Rules</h3>
	<p>You are given a total of $100,000 to spend on your five members.  Without exceeding this salary cap, you must choose the group of competitors that you beleive will score the most points at multi-point events this season.</p>
	<p>You are also given a maximum of six trades that you may make at any time throughout the season.  Keep in mind that competitor salaries will rise during any given season, and you must still adhere to the $100,000 salary cap.  Choose wisely when you choose your first team, because it may very well be the most strategic decision you make towards Fantasy-DB glory.</p>
	<h3><font color="white">..</font>Salaries</h3>
	<p>Salaries for competitors are determined objectively by the number of points they score at select multi point events in the past.  By selecting their name in the <a href="AddMember.php" class="invert">Browse Competitors</a> section, you can view their previous results.</p>
	<p>Salaries will rise as the competitor gains more and more points, even throughout the current season.  It is critical that (if you want a player on your team) you choose them as early in the season as possible.</p>
	<br>
	</td></tr></table>
  </div>
 	<div id="footer">
 	  <h1 class="TopAndBottomSpacers">copyright scott rehlander technologies all rights reserved 2007 </h1>
 	</div>
</div>
</body>
</html>