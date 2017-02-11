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
	
		$doNotDrawForm = false;
		
		if(!empty($_SESSION['userName']))
		{
			echo("<br><br><font color=\"red\">Error: You must logout before attempting to create a new username.</font>");
			$doNotDrawForm = true;
		}

	 if(empty($_SESSION['userName']))
	 {
		//assign variables
		$password = $_POST['password'];
		$userName = $_POST['userName'];
		$email = $_POST['email'];
		$aim = $_POST['aim']; 	

 		if(!empty($userName) && !empty($userName) && !empty($email))
		{
			//try
			//{
				//check db to see if username exists
				//make a connection	
				
				$con = mysql_connect("db550.perfora.net", "dbo199011162", "UMkPUSvq");
				if(!$con)
					die(mysql_error());
		 
				mysql_select_db("db199011162", $con) ;	
				
				$result = mysql_query("SELECT * FROM users WHERE UserName = '" . $userName . "'", $con) or die(mysql_error()); 
				$row = mysql_fetch_array( $result );
				
				if( empty($row) )
				{
					// User name is available
					$sql = "INSERT INTO users (UserName, UserEmail, UserPassword, UserIM) VALUES ('$userName', '$email', '$password', '$aim')";
			
					mysql_query($sql, $con);
					echo("<br><b>User created succesfully.<br><br>Please login to manage your team (Enter username and password above).</b>");
					$doNotDrawForm = true;
				}
				else
					echo("<br><font color=\"red\">User Not Created Error: User already exists with that name.  Please choose another username.<br></font>");
		
				//else
				//	throw new Exception("User already exists with that name.  Please choose another.");
			//}
			//catch(Exception $e) { echo("<font color=\"red\">Error: " . $e->getMessage() . "</font><br><br>"); }
		}//endif
		else
			$fieldError = true;
				
		if(! $doNotDrawForm)
		{
			echo("<br>
		 	 <table>
			 <form action=\"Register.php\" method=\"post\">
		     <tr><td>Username<font color =\"red\">*</font></td>
		    	<td><input name=\"userName\" type=\"text\" id=\"userName\" /></td></tr>
				<tr><td>Password<font color =\"red\">*</font></td>
			    <td><input name=\"password\" type=\"password\" id=\"password\" /></td></tr>
				<tr><td>Email<font color =\"red\">*</font></td>
		  	    <td><input name=\"email\" type=\"text\" id=\"email\" /></td></tr>
				<tr><td>AIM</td>
			    <td><input name=\"aim\" type=\"text\" id=\"aim\" /></td></tr>
				<tr><td> <br> Create Account</td>
				<td align=\"center\"><input type=\"submit\" name=\"Submit\" value=\"Submit\" /></td></tr>
				</form>
				</table>");
				echo("<br><font color=\"red\">* </font>denotes an required field.");
								
				if($fieldError && !empty($_POST['Submit']))
					echo("<br><br><font color=\"red\">User Not Created Error: You must fill out all required fields.</font>");
		}
	}//endif

 ?>


  </div>
 	<div id="footer">
 	  <h1 class="TopAndBottomSpacers">copyright scott rehlander technologies all rights reserved 2007 </h1>
 	</div>
</div>
</body>
</html>