<cfsilent>
	<cfimport prefix="mango" taglib="../../tags/mango" />
	<cfimport prefix="mangox" taglib="../../tags/mangoextras" />
	<cfimport prefix="template" taglib="." />
</cfsilent>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<template:headerhtml />
<body class="custom">
<div id="container">

	<div id="masthead">
		<h1>Error</h1>
	</div>

	<ul id="nav">
	
	</ul>
	
	<div id="header_img">
		<img src="skins/grey/assets/images/header_4.jpg" width="770" height="140" />
	</div>
	<div id="content_box">
	
		<div id="content" class="pages">
			<h2><mango:Message title /></h2>
			<div class="entry">
			<mango:Message text />
			<mango:Message data />
			</div>
			<div class="clear"></div>

<div class="clear flat"></div>
</div>

	</div>
	<div id="footer">
		<p><a href="http://www.mangoblog.org" title="Mango Blog - A free ColdFusion blog engine">Powered by Mango Blog</a> &mdash; Design by <a href="http://www.tubetorial.com">Chris Pearson</a> ported by <a href="http://www.asfusion.com">AsFusion</a></p>
	</div>
</div>
</body>
</html>