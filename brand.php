<?php
	// $domain_name = "http://ifsc.xyz";
	$blog_name = "IFSC-Search";
	$title = "IFSC-Search";

	if(isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on')
	    $link = "https";
	else
	    $link = "http";
	  
	// Here append the common URL characters.
	$link .= "://";
	  
	// Append the host(domain name, ip) to the URL.
	$link .= $_SERVER['HTTP_HOST'];

	define("SITE_NAME", $link."/ifsc/");
?>