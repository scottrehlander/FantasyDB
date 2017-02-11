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
			
	if(	!empty($_SESSION['userName']))
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

	//try
	//{
		$loggedIn = true;
		$tradeComplete = false;
		
		if(empty($_SESSION['userName']))
		{
			$loggedIn = false;
			echo("<br><font color=\"red\">You must login before attempting to manage your team.</font>");
		}
			
		if($loggedIn)
		{
			$con = mysql_connect("db550.perfora.net", "dbo199011162", "UMkPUSvq");
			if(!$con)
				die(mysql_error());

			mysql_select_db("db199011162", $con) ;	

		

			$maxPayroll = 100000;
			$teamID = $_SESSION['teamID'];
			$fireMemberID = $_GET['fireMemberID'];
			$addMemberID = $_GET['addMemberID'];
			$toWhichSlot = $_GET['toWhichSlot'];

			//Grab teamMembers row
			$sql = "SELECT * FROM teams WHERE TeamID = $teamID";
			$sqlResult = mysql_query($sql, $con) or die("Unexpected Database Error #1");
			$teamMembers = mysql_fetch_array( $sqlResult );
			//Assign IDs to an array
			$memberIDs[0] = $teamMembers['Member1'];
			$memberIDs[1]  = $teamMembers['Member2'];
			$memberIDs[2]  = $teamMembers['Member3'];
			$memberIDs[3]  = $teamMembers['Member4'];
			$memberIDs[4]  = $teamMembers['Member5'];
			$tradesLeft = $teamMembers['TradesLeft'];
	
			//Check to see if we just fired a member
			//if( !empty($fireMemberID) )
			//{
			//	$sql = "UPDATE teams SET Member" . $fireMemberID . " =  NULL WHERE TeamID = " . $_SESSION['teamID'];
			//	mysql_query($sql, $con);
			//}

		    echo("<br> <p align=\"left\" style=\"font-weight:bold;\">Team Management: </p>");
			//Check to see if we are adding a member
			if( !empty($addMemberID) )
			{
				//User requested to add a member
				//Checking for duplicates	

					$duplicate = false;
					$toWhichSlot = -1;
					$i = 0;
					while($i < 5)
					{
						if($memberIDs[$i] == $addMemberID)
						{
							$duplicate = true;
							$i = 5;
						}
						$i++;
					}	
				

				// If we are in a trade and we have not yet confirmed the change
				if(!empty($_SESSION['tradeMemberID']) && empty($_GET['confirm']) && empty($_GET['cancel']) && !empty($memberIDs[$_SESSION['tradeMemberID'] - 1]))
				{
					// Get the name of the competitor we want to add
					$sql = "SELECT * FROM competitors WHERE CompetitorID = " . $addMemberID;
					$sqlResult = mysql_query($sql, $con);
					$memberToAdd = mysql_fetch_array( $sqlResult );										
					
					// Get name of member we are trading
					$sql = "SELECT * FROM competitors WHERE CompetitorID = " . $memberIDs[$_SESSION['tradeMemberID'] - 1];
					$sqlResult = mysql_query($sql, $con);
					$memberToTrade = mysql_fetch_array( $sqlResult );										
				
					echo("<br><br><table border=1 cellpadding=0 cellspacing=0 class=\"contentTable\" width=50%><tr class=\"contentTableHeader\"><td>Please confirm trade</td></tr><tr height=100><td valign=\"middle\" align=\"center\">" . $memberToAdd[0]  . " for " . $memberToTrade[0] . ".<br>");
					echo("<b>Trades remaining: $tradesLeft</b><br>");
					echo("<br><br><form><input type=\"hidden\" name=\"addMemberID\" value=$addMemberID>");
					
					if($tradesLeft > 0)
					{
						echo("<input type=\"submit\" name=\"confirm\" value=\"Trade\" style=\"background-color:#0099CC;color:#FFFFFF;\" />");
						echo("<input type=\"submit\" name=\"cancel\" value=\"Cancel\" style=\"background-color:#0099CC;color:#FFFFFF;\" />");
					}
					else
					{
						echo("<font color=\"red\">Error: You have no trades remaining.</font>");
						$_SESSION['tradeMemberID'] = "";
					}
					echo("</form></td></tr></table><br><br>");
					$inTrade = true;
					$toWhichSlot = 6;
				}
				else if(!empty($_SESSION['tradeMemberID']) && $_GET['confirm'] == true)
				{ // We have confirmed the trade
					$toWhichSlot = $_SESSION['tradeMemberID'];
					$_SESSION['tradeMemberID'] = "";

					$tradeComplete = true;
				}
				else if(!empty($_GET['cancel']))
				{ // We have canceled the trade
					$_SESSION['tradeMemberID'] = "";
					$inTrade = false;
					$toWhichSlot = 6;
					$addMemberID = "";
				}
				
				$i = 0;
				if($toWhichSlot == -1)
				{
					//We must decide which Slot to add member to
					while($i < 5)
					{
						if(empty($memberIDs[$i]))
						{
							$toWhichSlot = $i + 1;
							$i = 6;
						}
						$i++;
					}
				}

				$noEmptySlots = false;
				if($i == 5)
					$noEmptySlots = true; 
			}
					
			if(!$inTrade)
			{
		
				//I need to check for salary cap error
				$i = 0;
				$salCapError = false;
				while($i < 5)
				{
					if($i + 1 == $toWhichSlot)
						$memberIDs[$i] = $addMemberID;

			   	 	if(!empty($memberIDs[$i]))
					{
						$sql = "SELECT * FROM competitors WHERE CompetitorID = " . $memberIDs[$i];
						$sqlResult = mysql_query($sql, $con);
						$memberRow = mysql_fetch_array( $sqlResult );
						$totSalary += $memberRow['YearlySalary'];
					}
					$i++;
					if($totSalary > 100000 && !empty($addMemberID))
					{
						$salCapError = true;
					}
				}
			} // endif $inTrade
		
			if(!$salCapError && !$duplicate && !$noEmptySlots)
			{
				//Update team member
				$sql = "UPDATE teams SET Member" . $toWhichSlot . " = $addMemberID WHERE TeamID = " . $_SESSION['teamID'];
				mysql_query($sql, $con);	
				

				//If the teamMembers row is empty, create team record with this users TeamID
				if( empty($teamMembers) )
				{
					$sql = "INSERT INTO teams (TeamID, TradesLeft) VALUES ($teamID, 6)";
					mysql_query($sql, $con);
				}
				
				//If we are in a trade, subtract 1
				if($tradeComplete)
				{
					// Add a record for team history
					$oldMembers = $memberIDs[0] . ";" . $memberIDs[1] . ";" . $memberIDs[2] . ";" . $memberIDs[3] . ";" . $memberIDs[4];
					$date = date("Y") . "-" . date("m") . "-" . date("d");
					$sql = "INSERT INTO pastteams (Members, Date, TeamID) VALUES ('$oldMembers', '$date', " . $_SESSION['teamID'] . ")";
					mysql_query($sql, $con);
		
					// Subtract 1 trade.
					$tradesLeft--;
					$sql = "UPDATE teams SET TradesLeft = $tradesLeft WHERE TeamID = " . $_SESSION['teamID'];
					mysql_query($sql, $con);
				}
			}
			else if($duplicate)
				echo("<br><font color=\"red\">Member is already on your team.  Team member not added.</font><br><br>");
			else if($noEmptySlots)
				echo("<br><font color=\"red\">No empty slots to add team member to. Team member not added.</font><br><br>");
			else if($salCapError)
			{
				echo("<br><font color=\"red\">Maximum salary exceeded.  Team member not added.</font><br><br>");
				if($inTrade)
				{
					$tradesLeft++;
					$sql = "UPDATE teams SET TradesLeft = $tradesLeft WHERE TeamID = " . $_SESSION['teamID'];
					mysql_query($sql, $con);			
				}
			}
		
			//Reinit teamMembers row
			$sql = "SELECT * FROM teams WHERE TeamID = $teamID";
			$sqlResult = mysql_query($sql, $con) or die("Unexpected Database Error #2");
			$teamMembers = mysql_fetch_array( $sqlResult );
			//Assign IDs to an array
			$memberIDs[0] = $teamMembers['Member1'];
			$memberIDs[1]  = $teamMembers['Member2'];
			$memberIDs[2]  = $teamMembers['Member3'];
			$memberIDs[3]  = $teamMembers['Member4'];
			$memberIDs[4]  = $teamMembers['Member5'];

			$i = 0;
			while($i < 5)
			{
			    if(!empty($memberIDs[$i]))
				{
					$sql = "SELECT * FROM competitors WHERE CompetitorID = " . $memberIDs[$i];
					$sqlResult = mysql_query($sql, $con);
					$memberRows[$i] = mysql_fetch_array( $sqlResult );
				}
				$i = $i + 1;
			}
	
			//Here I will want to look up misc info in the Members database
			$member1Row = $memberRows[0];
			$member1Name = $member1Row['CompetitorName'];
			$member1Salary = $member1Row['YearlySalary'];
			$member2Row = $memberRows[1];
			$member2Name = $member2Row['CompetitorName'];
			$member2Salary = $member2Row['YearlySalary'];
			$member3Row = $memberRows[2];
			$member3Name = $member3Row['CompetitorName'];
			$member3Salary = $member3Row['YearlySalary'];
			$member4Row = $memberRows[3];
			$member4Name = $member4Row['CompetitorName'];
			$member4Salary = $member4Row['YearlySalary'];
			$member5Row = $memberRows[4];
			$member5Name = $member5Row['CompetitorName'];
			$member5Salary = $member5Row['YearlySalary'];
			
			//Update salary
			$totSalary = $member1Salary + $member2Salary + $member3Salary + $member4Salary + $member5Salary;
			$sql = "UPDATE teams SET TotalSalary = $totSalary WHERE TeamID = " . $_SESSION['teamID'];
			mysql_query($sql, $con);
			
			$tradesLeft = $teamMembers['TradesLeft'];
	
			//Build team table
			echo("<br><table border=1 cellpadding=0 cellspacing=0 class=\"contentTable\" width=80%>");
			echo("<tr class=\"contentTableHeader\"><td>Member Name</td><td>Member Salary</td><td>Action</td</tr>");
			if(!empty($member1Name))
				echo("<tr><td>$member1Name</td><td>\$$member1Salary</td><td><a class=\"invert\" href=\"AddMember.php?TradeMemberID=1\">Trade</a></td>");
			else
				echo("<tr><td>$member1Name</td><td>\$$member1Salary</td><td></td>");
			if(!empty($member2Name))
				echo("<tr class=\"contentTableRowInvert\"><td>$member2Name</td><td>\$$member2Salary</td><td><a class=\"invert\"  href=\"AddMember.php?TradeMemberID=2\">Trade</a></td>");
			else
				echo("<tr class=\"contentTableRowInvert\"><td>$member2Name</td><td>\$$member2Salary</td><td></td>");
			if(!empty($member3Name))
				echo("<tr><td>$member3Name</td><td>\$$member3Salary</td><td><a class=\"invert\"  href=\"AddMember.php?TradeMemberID=3\">Trade</a></td>");
			else
				echo("<tr><td>$member3Name</td><td>\$$member3Salary</td><td></td>");
			if(!empty($member4Name))
				echo("<tr class=\"contentTableRowInvert\"><td>$member4Name</td><td>\$$member4Salary</td><td><a class=\"invert\"  href=\"AddMember.php?TradeMemberID=4\">Trade</a></td>");
			else
				echo("<tr class=\"contentTableRowInvert\"><td>$member4Name</td><td>\$$member4Salary</td><td></td>");
			if(!empty($member5Name))		
				echo("<tr><td>$member5Name</td><td>\$$member5Salary</td><td><a class=\"invert\" href=\"AddMember.php?TradeMemberID=5\">Trade</a></td>");
			else
				echo("<tr><td>$member5Name</td><td>\$$member5Salary</td><td></td>");
			echo("</table>");
			//diaplay amount of $ left
			$fundsRemaining = 100000 - $totSalary;
			echo("<br>Trades remaining: $tradesLeft</br><br>Funds spent: \$" . $totSalary . "<br> Funds remaining: \$" . $fundsRemaining);
			echo("<br><br>Note: To add members to your team, you must first <a href=\"AddMember.php\" class=\"invert\">Browse Competitors</a>");

		} // If logged in
?>  
	</p>
  </div>
 	<div id="footer">
 	  <h1 class="TopAndBottomSpacers">copyright scott rehlander technologies all rights reserved 2007 </h1>
 	</div>
</div>
</body>
</html>