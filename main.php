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
  		<?php
			if($userNameNotFound)
				echo("<p align=\"right\"><font color=\"red\">Username not found.</font></p>");
			if($passwordNotCorrect)
				echo("<p align=\"right\"><font color=\"red\">Password not correct.</font></p>");	
		?>
		<h2>Welcome to FantasyDB.</h2>
		<p><b>6-30-07 News:</b> Thanks for all of your support guys but it looks like the naming inconsistencies reported by Event promoters will make it quite a tough job to update!  I may make a tool to combine scores for the future and reopen the site for next season.  Good luck to everyone this year!! </p>
		<p><b>5-15-07 News:</b> So I just got back from SVR and it was a fun show thanks to Sam from <a class="invert" href="http://www.splmax.com">SPLMAX.com</a>!  Be on the lookout for an update soon due to the recent multi point events!! </p>
		<p><b>4-2-07 News:</b> There have been a few naming issues reported to me - They include Mike Bartells (Extreme Audio), Sound Mekanix - Street A (Sound Mekanix Street A), and Edge Audio - Kyle (Kyle Witherspoon).  I have fixed these three issues.  If anyone has found any other errors please report them in the <a class="invert" href="ReportBugs.php">Report Bugs</a> section, or on the <a class="invert" target="blank" href="http://www.splfantasy.com/forum">forum</a>. Thanks!!</p>
		<p><b>3-31-07 News:</b> The site is updated after the first big Triple of the year!! Check on your scores and make sure they are right.  If you find that there is a problem with the naming of a certain competitor on your team, you must report it to me.  I will not know what names are inconsistent without your help!!  Thanks all, and good luck!!</p>
		<p><b>3-30-07 News:</b> I have received results for Spring Break Nationals 2007.  Be on the lookout for an update this weekend!  But while you wait, check out the new <a class="invert" href="http://www.splfantasy.com/forum" target="blank">forum</a> and <a class="invert" href="AlbumViewer.php">SPL pics</a> section!!</p>
	  <p>Once again, thank you for choosing FantasyDB as your number one choice for fantasy spl.</p>
	  <p>Here you can choose a team of five members of the SPL community and compete against others based on how well your team members do at big shows throughout the year. Don't miss your chance to be a part of this one-of-a-kind experience. Please direct all questions to <a class="invert" href="mailto:webmaster@fantasy-db.com">webmaster@fantasy-db.com</a>, or AIM: xi2elic. This site is run by competitors and for competitors. Have fun, and <strong>play nice</strong>! </p>
	  <p>&nbsp;</p>
	  <p>&nbsp;</p>
	  <p>&nbsp;</p>
  </div>
 	<div id="footer">
 	  <h1 class="TopAndBottomSpacers">copyright scott rehlander technologies all rights reserved 2007 </h1>
 	</div>
</div>
</body>
</html>