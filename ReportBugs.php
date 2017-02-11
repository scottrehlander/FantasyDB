<?php session_start(); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>FantasyDB</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/template/1.css" rel="stylesheet" type="text/css" /></head>
<link href="/fantasydbWEB/template/1.css" rel="stylesheet" type="text/css" />
<body>
<div id="container">
	<div id="banner" ><img src="fdb.gif" width="414" height="66">
 		<h1 class="TopAndBottomSpacers">
			<?php
			$con = mysql_connect("db550.perfora.net", "dbo199011162", "UMkPUSvq");
			if(!$con)
				die(mysql_error());
		 
			mysql_select_db("db199011162", $con);	
					
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
  <div id="content" align="center">
  <h2>Report a Bug</h2>
  
  <?php
	$reportFile = 'bugReport.dat';
  
	if ($_POST['submit']) 
	{
		$file = fopen($reportFile, "a");
		$date = date('m-j-Y');
		$name = $_POST['name'];
		$comment = $_POST['description'];
		$what = $_POST['what'];
		fwrite($file, 
			"$date\t$name\t$comment\t$what\n");
		fclose($file);
		echo("<br><font color=\"red\">We appreciate your response, and apoligize for any inconvenience you may have incurred.</font><br><br>");
	}
  
  ?>
  <p>If you have experienced some sort of bug, we need to hear from you!! We are deeply sorry for the inconvenience, and hope you will continue to use us as your number one fantasy spl website. </p>
  <form id="form1" name="form1" method="post" action="ReportBugs.php">
      <table width="92%" border="1" cellspacing="0" cellpadding="15">
        <tr>
          <td width="53%" align="right" valign="top">Name:</td>
          <td width="47%"><input type="text" name="name" /></td>
        </tr>
        <tr>
          <td align="right" valign="top">Description of the problem: </td>
          <td><textarea name="description" cols="30" rows="6"></textarea></td>
        </tr>
        <tr>
          <td align="right" valign="top">What were you doing when the problem occured? </td>
          <td>            <textarea name="what" cols="30" rows="6"></textarea>          </td>
        </tr>
      </table>
      <p align="center">
        <input type="submit" name="submit" value="Submit" />
      </p>
    </form>
  </div>
 	<div id="footer">
 	  <h1 class="TopAndBottomSpacers">copyright scott rehlander technologies all rights reserved 2007 </h1>
 	</div>
</div>
</body>
</html>