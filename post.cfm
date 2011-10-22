<cfimport prefix="mango" taglib="../../tags/mango" />
<cfimport prefix="mangox" taglib="../../tags/mangoextras" />
<cfimport prefix="template" taglib="." />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<template:headerhtml />
	<body class="custom">
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
						<template:article />
			<div class="entry"><mango:PostProperty body /></div>
			<div class="entry-footer entry">
				<mango:Event name="beforePostContentEnd" template="post" mode="full" />
			</div>
			<p class="tagged">
				<strong>Tags:</strong>
				<mango:Categories>
					<mango:Category>
						<a href="<mango:CategoryProperty link />" title="View all posts in  <mango:CategoryProperty title />" rel="category tag"><mango:CategoryProperty title /></a>
						<mango:Category ifCurrentIsNotLast>&middot;</mango:Category>
					</mango:Category>
				</mango:Categories>
			</p>
			<div class="clear"></div>
			<div id="comments">
				<h3 class="comments_headers">
					<mango:PostProperty commentCount />
					response
					<mango:PostProperty ifCommentCountGT="1">s</mango:PostProperty>
					<mango:PostProperty ifCommentCountLT="1">s</mango:PostProperty>
					<mango:PostProperty ifcommentsallowed>so far &darr;</mango:PostProperty>
				</h3>
				<ul id="comment_list">
					<mango:Comments>
						<mango:Comment>
							<li class="comment <mango:CommentProperty ifIsAuthor> highlighted</mango:CommentProperty>" id="comment-<mango:CommentProperty id />">
								<p class="comment_meta">
									<span class="comment_num">
										<a href="#comment-<mango:CommentProperty id />" title="Permalink to this comment"><mango:CommentProperty currentCount /></a>
									</span>
									<strong>
										<mango:CommentProperty ifhasurl>
											<a href='<mango:CommentProperty url />' rel='external nofollow'>
										</mango:CommentProperty>
										<mango:CommentProperty name /><mango:CommentProperty ifhasurl></a></mango:CommentProperty> 
									</strong>
									<span class="comment_time">
										// 
										<mango:CommentProperty date dateformat="mmm d, yyyy" />
										at 
										<mango:CommentProperty time />
									</span>
								</p>
								<div class="entry"><mango:CommentProperty content /></div>
							</li>
						</mango:Comment>
					</mango:Comments>
					<mango:PostProperty ifcommentsallowed ifCommentCountLT="1">
						<!-- If comments are open, but there are no comments. -->
						<li class="comment">
							<div class="entry">
								<p>
									There are no comments yet...Kick things off by filling out the form below.
								</p>
							</div>
						</li>
					</mango:PostProperty>
				</ul>
				<mango:PostProperty ifcommentsallowed>
					<!-- Comment Form -->
					<h3 id="respond" class="comments_headers">Leave a Comment</h3>
					<mango:Message ifMessageExists type="comment" status="error">
						<p class="error">There was a problem: 
							<mango:Message text /></p>
					</mango:Message>
					<mango:Message ifMessageExists type="comment" status="success"><p class="message">
							<mango:Message text />
						</p></mango:Message>
					<form method="post" action="#respond" id="comment_form">
						<input type="hidden" name="action" value="addComment" />
						<input type="hidden" name="comment_post_id" value="<mango:PostProperty id />" />
						<input type="hidden" name="comment_parent" value="" />
						<mango:AuthenticatedAuthor ifIsLoggedIn>
							<p>You are logged in as 
								<mango:AuthorProperty name /></p>
							<input type="hidden" name="comment_name" value="<mango:AuthorProperty name />" />
							<input type="hidden" name="comment_email" value="<mango:AuthorProperty email />" />
							<input type="hidden" name="comment_website" value="<mango:Blog url />" />
						</mango:AuthenticatedAuthor>
						<mango:AuthenticatedAuthor ifNotIsLoggedIn>
							<p>
								<input id="author" class="text_input" type="text" name="comment_name" value="<mango:RequestVar name='comment_name' />" />
								<label for="author"><strong>
										Name
									</strong></label>
							</p>
							<p>
								<input class="text_input" type="text" id="email" name="comment_email" value="<mango:RequestVar name='comment_email' />" />
								<label for="email">
									<strong>Mail</strong>
									(it will not be displayed)
								</label>
							</p>
							<p>
								<input class="text_input" type="text" id="url" name="comment_website" size="30" value="<mango:RequestVar name='comment_website' />"  />
								<label for="url"><strong>
										Website
									</strong></label>
							</p>
						</mango:AuthenticatedAuthor>
						<p>
							<textarea class="text_input text_area" id="comment" name="comment_content" rows="7"><mango:RequestVar name="comment_content" /></textarea>
						</p>
						<p>
							<input type="checkbox" id="subscribe" name="comment_subscribe" value="1" />
							<label for="subscribe">Subscribe to this comment thread</label>
						</p>
						<p><mango:Event name="beforeCommentFormEnd" /></p>
						<p>
							<input name="submit" class="form_submit" type="submit" id="submit" src="<mango:Blog skinurl />assets/images/submit_comment.gif" value="Submit" />
						</p>
					</form>
				</mango:PostProperty>
			</div>
			<!-- Close #comments container -->
			<div class="clear flat"></div>
			</mango:Post> </div> 
			<div id="sidebar">
				<ul class="sidebar_list">
					<mangox:PodGroup locationId="sidebar" template="post"><template:sidebar /></mangox:PodGroup>
				</ul>
			</div>
			</div> 
			<div id="footer">
				<mango:Event name="afterFooterStart" />
				<p>
					<mango:Blog title />
					&mdash; 
					<a href="http://www.mangoblog.org" title="Mango Blog - A ColdFusion blog engine">Powered by Mango Blog</a>
					&mdash; Design by 
					<a href="http://www.tubetorial.com">Chris Pearson</a>
					ported by 
					<a href="http://www.asfusion.com">AsFusion</a>
				</p>
				<mango:Event name="beforeFooterEnd" />
			</div>
			</div> 
			<mango:Event name="beforeHtmlBodyEnd" />
	</body>
</html>
