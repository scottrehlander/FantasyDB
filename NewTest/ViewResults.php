<?php session_start(); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>FantasyDB</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/template/1.css" rel="stylesheet" type="text/css" />
<link href="/fantasydbWEB/template/1.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-17667692-2']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>








<!-- video stuff -->
<link rel="shortcut icon" href="favicon.ico" />

<!-- Start VideoLightBox.com HEAD section -->

<link rel="stylesheet" href="engine/css/videolightbox.css" type="text/css" />
<style type="text/css">#videogallery a#videolb{display:none}</style>

	<link rel="stylesheet" type="text/css" href="engine/css/overlay-minimal.css"/>
	<script src="engine/js/jquery.tools.min.js" type="text/javascript"></script>
	<script src="engine/js/swfobject.js" type="text/javascript"></script>
	<!-- make all links with the 'rel' attribute open overlays -->
	<script src="engine/js/videolightbox.js" type="text/javascript"></script>

<!-- End VideoLightBox.com HEAD section -->









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
<table>
<tr>
<td>
<script type="text/javascript"><!--
	google_ad_client = "pub-2204550774012692";
	/* 468x60, created 7/27/10 */
	google_ad_slot = "9869445372";
	google_ad_width = 468;
	google_ad_height = 60;
	//-->
	</script>
	<script type="text/javascript"
	src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>
</td>
<td>

					<div id="eXTReMe"><a href="http://extremetracking.com/open?login=xi2elic">
<img src="http://t1.extreme-dm.com/i.gif" style="border: 0;"
height="38" width="41" id="EXim" alt="eXTReMe Tracker" /></a>
<script type="text/javascript"><!--
var EXlogin='xi2elic' // Login
var EXvsrv='s10' // VServer
EXs=screen;EXw=EXs.width;navigator.appName!="Netscape"?
EXb=EXs.colorDepth:EXb=EXs.pixelDepth;EXsrc="src";
navigator.javaEnabled()==1?EXjv="y":EXjv="n";
EXd=document;EXw?"":EXw="na";EXb?"":EXb="na";
EXd.write("<img "+EXsrc+"=http://e1.extreme-dm.com",
"/"+EXvsrv+".g?login="+EXlogin+"&amp;",
"jv="+EXjv+"&amp;j=y&amp;srw="+EXw+"&amp;srb="+EXb+"&amp;",
"l="+escape(EXd.referrer)+" height=1 width=1>");//-->
</script><noscript><div id="neXTReMe"><img height="1" width="1" alt=""
src="http://e1.extreme-dm.com/s10.g?login=xi2elic&amp;j=n&amp;jv=n" />
</div></noscript></div>
</td>
</tr>
</table>

	
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
		
		<h1>Videos</h1>
			<!-- Start VideoLightBox.com BODY section -->
			<div id="videogallery">
				<a rel="#voverlay" href="http://www.youtube.com/v/UJKythlXAIY?autoplay=1&rel=0" title="OK Go - This Too Shall Pass">
					<img src="data/thumbnails/0.png" alt="OK Go - This Too Shall Pass" />
					<span>
						Is this a description?
					</span>
				</a>
				<a rel="#voverlay" href="http://www.youtube.com/v/FdeioVndUhs?autoplay=1&rel=0" title="New Boy">
					<img src="data/thumbnails/1.png" alt="New Boy" />
					<span>
						Is this a description x2?
					</span>
				</a>
			</div>

			<!-- End VideoLightBox.com BODY section -->

		
		
		
		

  </div>
 	<div id="footer">
 	  <h1 class="TopAndBottomSpacers">copyright scott rehlander technologies all rights reserved 2007 </h1>
 	</div>

</div>

</body>
</html>