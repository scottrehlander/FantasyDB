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
			
	if( !empty($_GET['TradeMemberID']))
		$_SESSION['tradeMemberID'] = $_GET['TradeMemberID'];	
	
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
    <div align="left">
      <p>&nbsp;</p>
    </div>
<table width="445" height="59" border="1" cellpadding="0" cellspacing="0">
           <tr>
             <td width="412" height="39" align="center" valign="middle" bordercolor="#0099CC">
			  <form >
		  	    <p>Search competitors:
        
                  <input type="text" name="search"  /> 
		  	      <input type="submit" value="Search" />
		  	    </p>
	  	       </form>
			 </td>
           </tr>
    </table>
	<br />
		 <p>
		   <?php

	//Here we need to populate a huge table of all the members.
	$con = mysql_connect("db550.perfora.net", "dbo199011162", "UMkPUSvq");
	if(!$con)
		die(mysql_error());

	mysql_select_db("db199011162", $con) ;	
	
	$result = mysql_query("SELECT * FROM competitors ORDER BY Class, CompetitorName", $con) or die(mysql_error()); 

	$tableStarted = false;
	$odd = false;
	while($row = mysql_fetch_array($result))
	{
		$skip = false;
		
		if(!empty($_GET["search"]))
		{
			$substr = stristr($row['CompetitorName'], $_GET["search"]);
			if( empty($substr) )
			{
				$skip = true;
			}
		}
		
	if(!$skip)
	{
		if($lastClass != $row['Class'])
		{
			if($tableStarted)
				echo("</table><br>");
			echo("<b>" . $row['Class'] . "</b><br><table width=80% cellspacing=0 cellpadding=0 border=1><tr class=\"contentTableHeader\"><td>Competitor Name</td><td>Yearly Salary</td><td>Action</td></tr>");
			$tableStarted = true;
		}
	
		$competitorName = $row['CompetitorName'];
		$yearlySalary = $row['YearlySalary'];
		$memberID = $row['CompetitorID'];
		$lastClass = $row['Class'];
		
		if($odd == true)
		{
			echo("<tr class=\"contentTableRowInvert\"><td><a class=\"black\" href=\"ViewResults.php?MemberID=$memberID\">$competitorName</a></td><td>\$$yearlySalary</td><td><a class=\"invert\" href=\"Manage.php?addMemberID=$memberID\">Add to team</a></tr>");
			$odd = false;
		}
		else
		{
			echo("<tr><td><a class=\"black\" href=\"ViewResults.php?MemberID=$memberID\">$competitorName</a></td><td>\$$yearlySalary</td><td><a class=\"invert\" href=\"Manage.php?addMemberID=$memberID\">Add to team</a></tr>");
			$odd = true;
		}
	} // end if skip
			
	} // end while
	echo("</table><br><br>");
?>
    </p>
  </div>
 	<div id="footer">
 	  <h1 class="TopAndBottomSpacers">copyright scott rehlander technologies all rights reserved 2007 </h1>
 	</div>
</div>
</body>
</html>