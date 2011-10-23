<cfsilent>
	<cfimport prefix="mango" taglib="../../tags/mango" />
	<cfimport prefix="mangox" taglib="../../tags/mangoextras" />
	<cfimport prefix="template" taglib="." />
</cfsilent>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head profile="http://gmpg.org/xfn/11">
		<meta http-equiv="Content-Type" content="text/html; charset=<mango:Blog charset />" />
		<title>Login &#8212; 
			<mango:Blog title /></title>
		<meta name="generator" content="Mango <mango:Blog version />" />
		<link rel="stylesheet" href="<mango:Blog skinurl />assets/css/style.css" type="text/css" media="screen" />
		<!--[if lte IE 7]>
			<link rel="stylesheet" type="text/css" href="<mango:Blog skinurl />assets/styles/ie7.css" media="screen" />
			<![endif]-->
		<!--[if lte IE 6]>
			<link rel="stylesheet" type="text/css" href="<mango:Blog skinurl />assets/styles/ie6.css" media="screen" />
			<![endif]-->
		<meta name="robots" content="noindex, nofollow" />
		<mango:Event name="beforeHtmlHeadEnd" />
	</head>
	<body class="page page-id-2 page-template-default">
		<mango:Event name="beforeHtmlBodyStart" />
		<a name="header"></a>
		<!-- header -->
		<header>
			<div id="light">
				<div class="container_16">
					<h1 class="grid_8"><a href="http://webexpedition18.com/grey">
							Grey
						</a></h1>
					<nav class="grid_8">
						<ul id="menu-menu" class="menu">
							<li id="menu-item-41" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-home menu-item-41">
								<a href="http://webexpedition18.com/grey/">Home</a>
							</li>
							<li id="menu-item-15" class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-2 current_page_item menu-item-15">
								<a href="http://webexpedition18.com/grey/?page_id=2">About</a>
							</li>
							<li id="menu-item-40" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-40">
								<a href="http://webexpedition18.com/grey/?page_id=38">Contact</a>
							</li>
						</ul>
					</nav>
				</div>
			</div>
		</header>
		<!-- wrapper -->
		<div id="wrapper">
			<div class="container_16">
				<section id="posts" class="prefix_1 grid_9">
				<article class="post-2 page type-page status-publish hentry" id="post-2">
				<h2>Login</h2>
				<div class="entry">
					<mango:RequestVar ifExists="errormsg">
						<p class="error"><mango:RequestVar name="errormsg" /></p>
					</mango:RequestVar>
					<cfoutput>
						<form action="<mangox:Environment selfUrl />" method="post" id="login_form">
					</cfoutput>
					<label for="username">Username:</label> <p> <input name="username" id="username" value="" size="22" type="text" class="text_input"> </p> <p> <label for="password">Password:</label><br /> <input name="password" id="password" value="" size="22" type="password" class="text_input"> </p> <input name="login" class="form_submit" type="submit" id="submit" 
						src="<mango:Blog skinurl />assets/images/submit_comment.gif" value="Login" /> </form> 
				</div>
				<div class="clear"></div>
				</article>
				</section>
		<mangox:PodGroup locationId="sidebar" template="index"> 
			<template:sidebar /> 
		</mangox:PodGroup> 
		</div></div>
						<!-- footer -->
		<template:footer /> 
		<mango:Event name="beforeHtmlBodyEnd" />
	</body>
</html>
