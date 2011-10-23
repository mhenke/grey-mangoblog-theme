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
		<template:header />
		<!-- wrapper -->
		<div id="wrapper">
			<div class="container_16">
				<section id="posts" class="prefix_1 grid_9">
				<h2><mango:Message title /></h2>
				<div class="entry">
					<mango:Message text />
					<mango:Message data />
				</div>
				</section>
				<mangox:PodGroup locationId="sidebar" template="index"><template:sidebar /></mangox:PodGroup>
			</div>
		</div>
		<!-- footer -->
		<template:footer />
		<mango:Event name="beforeHtmlBodyEnd" />
	</body>
</html>