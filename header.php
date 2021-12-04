<?php
	require_once("connection.php");
	require_once("brand.php");
?>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="<?php echo SITE_NAME ?>css/colors.css">
		<link rel="stylesheet" type="text/css" href="<?php echo SITE_NAME ?>css/main.css">
		<title><?php echo $title; ?></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	</head>
	<body>
<div class="top">
	<h1><a href="index.php"><?php echo $blog_name; ?></a></h1>
	<div style="padding: 10px; background: #F4ACFE;">
		<span><a href='./about-us.php'>About Us</a></span> | 
		<span><a href='./contact-us.php'>Contact Us</a></span> | 
		<span><a href='./privacy-policy.php'>Privacy Policy</a></span>
	</div>
</div>

<div>
	<!-- HEADER AD BANNER COMES HERE -->
	<!--<div style='width: 728px; height: 98px; background: #F00; margin: 0 auto;'></div>-->
</div>

<?php /*
echo $_SERVER['PHP_SELF'];
echo "<br>";
echo $_SERVER['SERVER_NAME'];
echo "<br>";
echo $_SERVER['HTTP_HOST'];
echo "<br>";
echo $_SERVER['HTTP_REFERER'];
echo "<br>";
echo $_SERVER['HTTP_USER_AGENT'];
echo "<br>";
echo $_SERVER['SCRIPT_NAME'];
echo $_SERVER['REQUEST_URI'];
*/ ?>