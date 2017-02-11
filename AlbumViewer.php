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
	
		// If we have already posted an album name
		if(!empty($_GET["album"]))
		{
			echo("<table><tr>");
			echo("<br><br>");
			
			$MAX_ROW_COUNT = 5;
			$MAX_COL_COUNT = 2;
			$picsPerPage = $MAX_ROW_COUNT * $MAX_COL_COUNT;
			
			$colCount = 0;
			$rowCount = 0;
			$picCount = 0;
			$startPic = 0;
			$stop = true;
	
			if(!empty($_GET["page"]))
				$startPic = ($_GET["page"] - 1) * $picsPerPage;
	
			$directory = opendir($_GET["album"]);
			
			while($filename = readdir($directory))
			{
				if($startPic == $picCount)
					$stop = false;
			
				if($colCount == $MAX_COL_COUNT)
				{
					echo("</tr><tr>");
					$colCount = 0;
					$rowCount++;
					if($rowCount == $MAX_ROW_COUNT)
						$stop = true;
				}
		
				if(!(stristr($filename, 'tn_') === FALSE))
				{
					$picCount++;
					if(!$stop)
					{
						$nonThumb = substr($filename, 3);
						echo("<td><a href=\"" . $_GET["album"] . "/" . $nonThumb . "\"><img border=0 src=\"" . $_GET["album"] . "/" . $filename . "\"></a></td>");
						$colCount++;
					}
				}
			}
			closedir($directory);
	
			echo("</tr></table>");
			
			$numOfTables = ($picCount / $picsPerPage) + 1;
			$page = 1;
			if(!empty($_GET["page"]))
				$page = $_GET["page"];
	
			echo("<p><font size=2>");
			
			if($page > 1)
			{
				$newPage = $page - 1;
				echo(" <a class=\"invert\" href=\"AlbumViewer.php?album=" . $_GET["album"] . "&page=" . $newPage . "\">Prev::</a>  "); 
			}
			for($i = 1; $i <= $numOfTables; $i++)
			{
				if($page != $i)
					echo("<a class=\"invert\" href=\"AlbumViewer.php?page=$i&album=" . $_GET['album'] . "\">$i</a> ");
				else
					echo("$i ");
			}
			if($page < $numOfTables - 1)
			{
				$newPage = $page + 1;
				echo(" <a class=\"invert\" href=\"AlbumViewer.php?album=" . $_GET["album"] . "&page=" . $newPage . "\"> ::Next</a>");
			}
			
			echo("</font></p><br><br>");
		}
		else
		{ // We need to show a list of albums to the user
			$result = mysql_query("SELECT * FROM albums", $con) or die(mysql_error());
			echo("<h2>Photo Albums</h2><br><table border=1 cellpadding=0 cellspacing=3 width = 90%>");
			
			$even = true;
			while($row = mysql_fetch_array($result))
			{
				if($even)
					echo("<tr><td align=\"center\" width = 50%><img height=100px width=150px src=\"pics/" . $row["Directory"] . "/" . $row["Picture"] . "\"></td><td align=\"center\"  width = 50%><a class=\"invert\" href=\"AlbumViewer.php?album=pics/" . $row["Directory"] . "\">" . $row["AlbumName"] . "</a></td></tr>");
				else
					echo("<tr class=\"contentTableRowInvert\"><td align=\"center\" ><a class=\"invert\" href=\"AlbumViewer.php?album=pics/" . $row["Directory"] . "\">" . $row["AlbumName"] . "</a></td><td align=\"center\" ><img height=100px width=150px src=\"pics/" . $row["Directory"] . "/" . $row["Picture"] . "\"></td></tr>");
					
				$even = !$even;	
			}
			echo("</table><br><br>");
		}

	
	
	?>  
	</p>
  </div>
 	<div id="footer">
 	  <h1 class="TopAndBottomSpacers">copyright scott rehlander technologies all rights reserved 2007. </h1>
 	</div>
</div>
</body>
</html>