<cfsilent>
	<cfimport prefix="mango" taglib="../../tags/mango" />
	<cfimport prefix="mangox" taglib="../../tags/mangoextras" />
	<cfimport prefix="template" taglib="." />
</cfsilent>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<template:headerhtml />
<body class="custom">
<mango:Event name="beforeHtmlBodyStart" />
<div id="container">
	<div id="masthead">
		<h1><a href="<mango:Blog url />"><mango:Blog title /></a></h1>
		<h3><mango:Blog tagline /></h3>
	</div>

	<ul id="nav">
		<li><a href="<mango:Blog basePath />">front page</a></li>
		<mango:Pages parentPage=""><mango:Page>
			<li><a href="<mango:PageProperty link>" title="<mango:PageProperty title />">
				<mango:PageProperty title /></a></li>
			</mango:Page></mango:Pages>
		<li class="rss"><a href="<mango:Blog rssurl />">RSS</a></li>
	</ul>
	
	<div id="header_img">
		<img src="<mango:Blog skinurl />assets/images/header_3.jpg" width="770" height="140" alt="<mango:Blog title />" title="<mango:Blog title />" />
	</div>
	<div id="content_box">
		<div id="content" class="pages">
		
		<h2><mango:Message title /></h2>
		<div class="entry"><mango:Message text />
		<mango:Message data /></div>
		<div class="clear"></div>

		<div class="clear flat"></div>

		</div>
		
<div id="sidebar">
	<ul class="sidebar_list">
		<mangox:PodGroup locationId="sidebar" template="generic">
			<template:sidebar />
		</mangox:PodGroup>	
	</ul>
	</div>
	</div>

	<div id="footer"><mango:Event name="afterFooterStart" />
		<p><mango:Blog title /> &mdash; <a href="http://www.mangoblog.org" title="Mango Blog - A ColdFusion blog engine">Powered by Mango Blog</a> &mdash; Design by <a href="http://www.tubetorial.com">Chris Pearson</a> ported by <a href="http://www.asfusion.com">AsFusion</a></p>
	<mango:Event name="beforeFooterEnd" />
	</div>
</div>
<mango:Event name="beforeHtmlBodyEnd" />
</body>
</html>