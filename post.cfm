<cfsilent>
<cfimport prefix="mango" taglib="../../tags/mango" />
<cfimport prefix="mangox" taglib="../../tags/mangoextras" />
<cfimport prefix="template" taglib="." />
</cfsilent>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<template:headerhtml />
	<mango:Event name="beforeHtmlBodyStart" />
	<body class="single single-post postid-56 single-format-standard">
		<mango:Event name="beforeHtmlBodyStart" />
		<template:header />
		<!-- wrapper -->
		<div id="wrapper">
		<mango:Post>
			<div class="container_16">
				<section id="posts" class="prefix_1 grid_9">
					<article class="post-56 post type-post status-publish format-standard hentry category-updates tag-coffee tag-web-design" id="post-56">
						<div class="post_socials">
							<div class="fb-like" data-send="false" data-layout="button_count" data-show-faces="true"></div>
							<!--- <iframe src="http://www.facebook.com/plugins/like.php?href=http://webexpedition18.com/grey/?p=56&amp;layout=button_count&amp;show_faces=true&amp;width=100&amp;action=recommend&amp;font=verdana&amp;colorscheme=light&amp;height=21" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width: 100px; height:21px" allowTransparency="true"></iframe> --->
							<!--twitter -->
							<a href="https://twitter.com/share" class="twitter-share-button" data-count="horizontal" data-via="coldfusionshow">Tweet</a>
							<script type="text/javascript" src="//platform.twitter.com/widgets.js"></script> 
							<!-- Place this tag where you want the +1 button to render -->
							<g:plusone></g:plusone>
						</div>
						<!--- <img width="510" height="150" src="http://webexpedition18.com/grey/wp-content/uploads/2010/12/caffee-break-final-510x150.jpg" class="teasier wp-post-image" alt="caffee-break-final" title="caffee-break-final" /> --->
						<template:article />
						<div class="entry"><mango:PostProperty body /></div>
						<div class="clear"></div>
						<!---
						<div id="box_author">
							<!--- <img alt='' src='http://1.gravatar.com/avatar/7cf07a4fa60d4aa7bb31ebdbe0b4753d?s=80&amp;d=http%3A%2F%2F1.gravatar.com%2Favatar%2Fad516503a11cd5ca435acc9bb6523536%3Fs%3D80&amp;r=G' class='avatar avatar-80 photo' height='80' width='80' /> --->
							<p class="authored">
								Authored by 
								<span>
									<a href="http://webexpedition18.com/grey/?author=1" title="Posts by admin" rel="author"><mango:PostProperty author /></a>
								</span>
							</p>
							<p>
								The ColdFusion Show is a ColdFusion-related podcast, featuring news and discussion about the latest topics in the ColdFusion community. 
							</p>
						</div> 
						--->
					</article>
					<cfinclude template="comments.cfm" />
		</mango:Post>
		</section> <mangox:PodGroup locationId="sidebar" template="post"><template:sidebar /></mangox:PodGroup> </div> 
		<!-- footer -->
		<template:footer />
		<mango:Event name="beforeFooterEnd" />
		<mango:Event name="beforeHtmlBodyEnd" />
	</body>
</html>
<!--facebook -->
<script>(function(d, s, id) {
	var js, fjs = d.getElementsByTagName(s)[0];
	if (d.getElementById(id)) {return;}
	js = d.createElement(s); js.id = id;
	js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
	fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
</script> 
<!-- Place this render call where appropriate -->
<script type="text/javascript">
	(function() {
	  var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
	  po.src = 'https://apis.google.com/js/plusone.js';
	  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
	})();
</script> 
