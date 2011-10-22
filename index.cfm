<cfimport prefix="mango" taglib="../../tags/mango" />
<cfimport prefix="mangox" taglib="../../tags/mangoextras" />
<cfimport prefix="template" taglib="." />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<template:headerhtml />
	<body class="home blog">
		<mango:Event name="beforeHtmlBodyStart" />
		<template:header />
		<!-- wrapper -->
		<div id="wrapper">
			<div class="container_16">
				<section id="posts" class="prefix_1 grid_9">
					<mango:Posts count="10">
						<mango:Post>
							<article id="post-<mango:PostProperty id />"><template:article />
							<p>
								<img width="510" height="150" src="http://webexpedition18.com/grey/wp-content/uploads/2010/12/caffee-break-final-510x150.jpg" class="teasier wp-post-image" alt="caffee-break-final" title="caffee-break-final" />
							</p>
							<div class="entry">
								<mango:PostProperty ifhasExcerpt excerpt>
									<p>
									<a href="<mango:PostProperty link />" title="Read the rest of this entry" class="more-link">Read full story</a>
									</p> 
								</mango:PostProperty>
							</div>
							<div class="clear"></div>
							<p class="bottom_info">
								<mango:PostProperty ifcommentsallowed>
									&rarr; 
									<a href="<mango:PostProperty link />#respond" title="Comment on <mango:PostProperty title />">
										<mango:PostProperty ifCommentCountGT="0">
											<mango:PostProperty commentCount />
											Comment 
											<mango:PostProperty ifCommentCountGT="1">s</mango:PostProperty>
											&#187; 
										</mango:PostProperty>
										<mango:PostProperty ifCommentCountLT="1">No Comments</mango:PostProperty>
									</a>
								</mango:PostProperty>
							</p>
							</article>
						</mango:Post>
					</mango:Posts>
					<mango:Archive pageSize="10">
						<div class="navigation">
							<div class="alignleft">
								Older Posts 
								<mango:ArchiveProperty ifHasNextPage>
									<a class="previous" href=" 
									<mango:ArchiveProperty link pageDifference="1" />
									">&larr; Previous Entries</a> 
								</mango:ArchiveProperty>
							</div>
							<div class="alignright">Newer Posts</div>
						</div>
					</mango:Archive>
				</section>
				<mangox:PodGroup locationId="sidebar" template="index"><template:sidebar /></mangox:PodGroup>
			</div>
		</div>
		<!-- footer -->
		<template:footer />
		<mango:Event name="beforeHtmlBodyEnd" />
	</body>
</html>
