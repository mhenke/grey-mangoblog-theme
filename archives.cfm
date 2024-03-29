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
		<body  class="page page-id-2 page-template-default">
			<mango:Event name="beforeHtmlBodyStart" />
			<template:header />
			<!-- wrapper -->
			<div id="wrapper">
			<div class="container_16">
				<section id="posts" class="prefix_1 grid_9">
					<article class="post-2 page type-page status-publish hentry" id="post-2">
						<mango:Archive pageSize="10">
							<mango:ArchiveProperty ifIsType="category">
								<h2 class="archive_head">
									Entries Tagged as 
									<span class="green"><mango:ArchiveProperty title /></span>
								</h2>
							</mango:ArchiveProperty>
							<mango:ArchiveProperty ifIsType="month">
								<h2 class="archive_head">
									Entries for month: 
									<span class="green"><mango:ArchiveProperty title dateformat="mmmm yyyy"  /></span>
								</h2>
							</mango:ArchiveProperty>
							<mango:ArchiveProperty ifIsType="day">
								<h2 class="archive_head">
									Entries for day: 
									<span class="green"><mango:ArchiveProperty title dateformat="dd mmmm yyyy" /></span>
								</h2>
							</mango:ArchiveProperty>
							<mango:ArchiveProperty ifIsType="year">
								<h2 class="archive_head">
									Entries for year: 
									<span class="green"><mango:ArchiveProperty title dateformat="yyyy" /></span>
								</h2>
							</mango:ArchiveProperty>
							<mango:ArchiveProperty ifIsType="search">
								<h2 class="archive_head">
									Search Results for 
									<span class="green"><mango:ArchiveProperty title format="escapedHtml" /></span>
								</h2>
							</mango:ArchiveProperty>
							<mango:ArchiveProperty ifIsType="author">
								<h2 class="archive_head">
									Entries by ' 
									<mango:ArchiveProperty title />
									' 
								</h2>
							</mango:ArchiveProperty>
							<mango:ArchiveProperty ifIsType="unknown"><h2 class="archive_head">
									No archives 
								</h2></mango:ArchiveProperty>
							<mango:Posts count="10">
							<mango:Posts count="10">
								<mango:Post>
									<article id="post-<mango:PostProperty id />">
										<template:article />
										<div class="entry">
											<mango:PostProperty ifhasExcerpt excerpt />
											<mango:PostProperty ifNotHasExcerpt body />
										</div>
										<div class="clear"></div>
										<template:readmore />
									</article>
								</mango:Post>
							</mango:Posts>
							<div class="navigation">
								<div class="previous">
									<mango:ArchiveProperty ifHasNextPage>
										<a class="alignleft" href=" 
										<mango:ArchiveProperty link pageDifference="1" />
										">Older Posts</a> 
									</mango:ArchiveProperty>
								</div>
								<div class="next">
									<mango:ArchiveProperty ifHasPreviousPage>
										<a class="alignright" href=" 
										<mango:ArchiveProperty link pageDifference="-1" />
										">Newer Posts</a> 
									</mango:ArchiveProperty>
								</div>
							</div>
						</mango:Archive>
						<div class="clear"></div>
					</article>
				</section>
				<mango:Event name="beforeHtmlBodyEnd" />
				<mangox:PodGroup locationId="sidebar" template="post"><template:sidebar /></mangox:PodGroup>
			</div>
			<!-- footer -->
			<template:footer />
			<mango:Event name="beforeFooterEnd" />
			<mango:Event name="beforeHtmlBodyEnd" />
	</body>
</html>
