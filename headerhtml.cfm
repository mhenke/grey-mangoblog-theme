<cfimport prefix="mango" taglib="../../tags/mango" />
<cfimport prefix="mangox" taglib="../../tags/mangoextras" />
<cfimport prefix="template" taglib="." />
<cfif thisTag.executionMode EQ "start">
	<head profile="http://gmpg.org/xfn/11">
		<meta http-equiv="Content-Type" content="text/html; charset=<mango:Blog charset />" />
		<title><mango:Blog title />
			&#8212; 
			<mango:Blog tagline /></title>
		<meta name="generator" content="Mango <mango:Blog version />" />
		<meta name="description" content="<mango:Blog description />" />
		<link rel="stylesheet" href="<mango:Blog skinurl />assets/css/style.css" type="text/css" media="screen" />
		<meta name="robots" content="index, follow" />
		<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="<mango:Blog rssurl />" />
		<link rel="alternate" type="application/atom+xml" title="Atom" href="<mango:Blog atomurl />" />
		<link rel="EditURI" type="application/rsd+xml" title="RSD" href="<mango:Blog apiurl />" />
		<script type="text/javascript" src="<mango:Blog skinurl />assets/js/jquery.main.js"></script> 
		<mango:Event name="beforeHtmlHeadEnd" />
	</head>
</cfif>