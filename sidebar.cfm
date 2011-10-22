<cfimport prefix="mango" taglib="../../tags/mango" />
<cfimport prefix="mangox" taglib="../../tags/mangoextras" />
<cfimport prefix="template" taglib="." />
<cfif thisTag.executionMode EQ "start">
	<aside class="prefix_1 grid_5">
		php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar() ) : 
		<!-- search -->
		php get_search_form(); 
		<!-- Categories-->
		<h4>Categories</h4>
		<ul class="categories">php wp_list_categories('title_li=');</ul>
		<div class="clear"></div>
		<hr />
		<!-- RSS / Twitter -->
		<section id="rss">
			<p>
				<a href="php bloginfo('rss2_url'); ">
					<img src="<mango:Blog skinurl />assets/images/socials/rss_32.png" alt="Subscribe Feed" />
				</a>
			</p>
			<p>
				<a href="php bloginfo('rss2_url'); ">SUBSCRIBE</a>
				<br />
				<strong>
					php $socials = get_option('grey_socials'); echo grey_feeds_count( $socials['feedburner'] ); 
				</strong>
				readers
			</p>
			<p class="rss_sub_links">
				<a href="php bloginfo('rss2_url'); ">rss feed</a>
				php if( $socials['feedburner'] ) : | 
				<a href="http://feedburner.google.com/fb/a/mailverify?uri=php echo $socials['feedburner']; &amp;loc=en_US">email updates</a>
				php endif; 
			</p>
		</section>
		<section id="twitter">
			<p>
				<a href="http://twitter.com/php echo $socials['twitter']; ">
					<img src="<mango:Blog skinurl />assets/images/socials/twitter_32.png" alt="Follow on Twitter" />
				</a>
			</p>
			<p>
				<a href="http://twitter.com/php echo $socials['twitter']; ">FOLLOW ME</a>
				<br />
				<strong>php echo grey_twitter_count( $socials['twitter'] );</strong>
				followers
			</p>
		</section>
		
		
		<!--- twitterFollow --->
	<mangox:TemplatePod id="twitterFollow" title="twitter Follow">
	<ul>
	<mango:Categories>
		<mango:Category>
		<li><a href="<mango:CategoryProperty rssurl />" class="category_rss"><img src="<mango:Blog skinurl />assets/images/icon_rss.gif"></a> <a href="<mango:CategoryProperty link />" title="<mango:CategoryProperty title />"><mango:CategoryProperty title /></a> </li>
		</mango:Category>
	</mango:Categories>
	</ul>
	</mangox:TemplatePod>
	
	<!--- categories with RSS --->
	<mangox:TemplatePod id="categories" title="Categories">
	<ul>
	<mango:Categories>
		<mango:Category>
		<li><a href="<mango:CategoryProperty rssurl />" class="category_rss"><img src="<mango:Blog skinurl />assets/images/icon_rss.gif"></a> <a href="<mango:CategoryProperty link />" title="<mango:CategoryProperty title />"><mango:CategoryProperty title /></a> </li>
		</mango:Category>
	</mango:Categories>
	</ul>
	</mangox:TemplatePod>
	
	<!--- search box --->
	<mangox:TemplatePod id="search" title="Search It!">
	<form name="searchForm" id="search_form" method="get" action="<mango:Blog searchUrl />">
		<input type="text" class="search_input" name="term" value="To search, type and hit enter" id="term" onfocus="if (this.value == 'To search, type and hit enter') {this.value = '';}" onblur="if (this.value == '') {this.value = 'To search, type and hit enter';}" />
		<input type="hidden" id="searchsubmit" value="Search" />
	</form>
	</mangox:TemplatePod>

	<!--- category cloud --->
	<mangox:TemplatePod id="category-cloud" title="Tag Cloud">
		<mangox:CategoryCloud />
	</mangox:TemplatePod>
	
	<!--- all archives by month --->
	<mangox:TemplatePod id="monthly-archives" title="Monthly Archives">
		<ul><mango:Archives type="month" count="6"><mango:Archive>
			<li><a href="<mango:ArchiveProperty link />"><mango:ArchiveProperty title dateformat="mmmm yyyy" /> (<mango:ArchiveProperty postcount />)</a></li>
		</mango:Archive></mango:Archives>
		</ul>
	</mangox:TemplatePod>
	
<!--- all links by category --->
	<mangox:TemplatePod id="links-by-category">
		<mangox:LinkCategories>
			<mangox:LinkCategory>
			<li class="linkcat">
			<h2><mangox:LinkCategoryProperty name /></h2>
			</mangox:LinkCategory>
				<ul>
				<mangox:Links>
				<mangox:Link>
					<li><a href="<mangox:LinkProperty address />" title="<mangox:LinkProperty title />"><mangox:LinkProperty title /></a></li>
				</mangox:Link>
				</mangox:Links>
				</ul>
			</li>
		</mangox:LinkCategories>
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
		<mangox:Pod><!--- output the content as is, good for "templatePods" --->
			<mangox:PodProperty ifNotHasTitle>
				<mangox:PodProperty content />
			</mangox:PodProperty>
		</mangox:Pod>
	</mangox:Pods>
		
		
		
		<hr />
		<!-- Comments -->
		<h4>Recent Comments</h4>
		php grey_last_comments(5, 50); 
		<div class="clear"></div>
		<hr />
		<!-- Blogroll -->
		<h4>Blogroll</h4>
		<ul class="blogroll">php wp_list_bookmarks('categorize=0&title_li=');</ul>
		<hr />
		php endif; 
	</aside>
</cfif>
