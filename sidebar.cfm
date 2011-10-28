<cfsilent>
	<cfimport prefix="mango" taglib="../../tags/mango" />
	<cfimport prefix="mangox" taglib="../../tags/mangoextras" />
	<cfimport prefix="template" taglib="." />
</cfsilent>
<cfif thisTag.executionMode EQ "start">
	<aside class="prefix_1 grid_5">
		<!--- 
			<!-- search -->
			<form action="http://webexpedition18.com/grey" method="get"><input type="text" id="search" name="s" value="I'm searching for..." /></form>
			<div class="clear"></div>
			<hr /> 
			--->
		<!-- RSS / Twitter -->
		<section id="rss">
			<p>
				<img src="<mango:Blog url />skins/grey/assets/images/socials/rss_32.png" alt="Subscribe Feed">
			</p>
			<p>
				<a href="<mango:Blog rssurl />">SUBSCRIBE</a>
				<br>
				<!--- <strong>1538</strong> readers --->
			</p>
			<p class="rss_sub_links">
				<a href="<mango:Blog rssurl />">RSS</a>
				&#124; 
				<a href="http://itunes.apple.com/us/podcast/coldfusion-show/id475472078">iTunes</a>
			</p>
		</section>
		<section id="twitter">
			<p>
				<a href="http://twitter.com/coldfusionshow">
					<img src="<mango:Blog url />skins/grey/assets/images/socials/twitter_32.png" alt="Follow on Twitter" />
				</a>
			</p>
			<p>
				<a href="http://twitter.com/coldfusionshow">FOLLOW US</a><br><br>
			</p>
			<p>
				<a href="http://twitter.com/coldfusionshow" class="twitter-follow-button">Follow @coldfusionshow</a>
				<script src="http://platform.twitter.com/widgets.js" type="text/javascript"></script> 
			</p>
		</section>
		<div class="clear"></div>
		<hr />
		<!---
			<h4>Categories</h4>
			<ul class="categories">
			<li class="cat-item cat-item-6">
			<a href="http://webexpedition18.com/grey/?cat=6" title="View all posts filed under design">design</a>
			</li>
			<li class="cat-item cat-item-8">
			<a href="http://webexpedition18.com/grey/?cat=8" title="View all posts filed under inspiration">inspiration</a>
			</li>
			<li class="cat-item cat-item-7">
			<a href="http://webexpedition18.com/grey/?cat=7" title="View all posts filed under tutorials">tutorials</a>
			</li>
			<li class="cat-item cat-item-1">
			<a href="http://webexpedition18.com/grey/?cat=1" title="View all posts filed under uncategorized">uncategorized</a>
			</li>
			<li class="cat-item cat-item-10">
			<a href="http://webexpedition18.com/grey/?cat=10" title="View all posts filed under updates">updates</a>
			</li>
			<li class="cat-item cat-item-9">
			<a href="http://webexpedition18.com/grey/?cat=9" title="View all posts filed under web">web</a>
			</li>
			</ul>
			--->
		<!-- Categories-->
		<mangox:TemplatePod id="categories" count="6">
			<h4>Categories</h4>
			<ul>
				<mango:Categories>
					<mango:Category>
						<li class="cat-item cat-item-<mango:CategoryProperty id />">
							<a href="<mango:CategoryProperty link />" title="View all posts filed under <mango:CategoryProperty title />"><mango:CategoryProperty title /></a>
						</li>
					</mango:Category>
				</mango:Categories>
			</ul>
			<div class="clear"></div>
			<hr />
		</mangox:TemplatePod>
		<!--- output all the pods, including the ones added by plugins --->
		<mangox:Pods>
			<mangox:Pod>
				<mangox:PodProperty ifHasTitle>
					<li class="widget">
						<h2><mangox:PodProperty title /></h2>
						<mangox:PodProperty content />
					</li>
				</mangox:PodProperty>
			</mangox:Pod>
			<mangox:Pod>
				<!--- output the content as is, good for "templatePods" --->
				<mangox:PodProperty ifNotHasTitle><mangox:PodProperty content /></mangox:PodProperty>
			</mangox:Pod>
			<div class="clear"></div>
			<hr />
		</mangox:Pods>
		<!-- Comments -->
		<h4>Recent Comments</h4>
		<ul class='recent_comments'>
			<mango:Comments recent count="8">
				<mango:Comment>
					<li>
						<mango:CommentProperty excerptChars="55" />
						<br />
						<a href="<mango:CommentProperty entryLink />#comment-<mango:CommentProperty id />" title="on <mango:CommentProperty entryTitle />"><mango:CommentProperty name /></a>
					</li>
				</mango:Comment>
			</mango:Comments>
		</ul>
		<div class="clear"></div>
		<hr />
	</aside>
</cfif>
