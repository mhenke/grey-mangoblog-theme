<cfsilent>
	<cfimport prefix="mango" taglib="../../tags/mango" />
	<cfimport prefix="mangox" taglib="../../tags/mangoextras" />
	<cfimport prefix="template" taglib="." />
</cfsilent>
<cfif thisTag.executionMode EQ "start">
	<a name="header"></a>
	<!-- header -->
	<header>
		<div id="light">
			<div class="container_16">
				<h1 class="grid_8"><a href="<mango:Blog url />">
						<mango:Blog title />
					</a></h1>
				<nav class="grid_8">
					<ul id="menu-menu" class="menu">
						<li id="menu-item-home" class="menu-item menu-item-type-post_type current-menu-item menu-item-object-page menu-item-home">
						<a href="<mango:Blog basePath />">home</a>
						</li>
						<!--- <li id="menu-item-archives" class="menu-item menu-item-type-post_type current-menu-item menu-item-object-page menu-item-archives">
						<a href="">archives</a> --->
						</li>
						<mango:Pages parentPage="">
							<mango:Page>
								<li id="menu-item-<mango:PageProperty id>" class="menu-item menu-item-type-post_type current-menu-item <mango:PageProperty ifiscurrentpage>current_page_item</mango:PageProperty> menu-item-object-page menu-item-<mango:PageProperty id>">
									<a href="<mango:PageProperty link>" title="<mango:PageProperty title />"><mango:PageProperty title /></a>
								</li>
							</mango:Page>
						</mango:Pages>
						<!--- <li id="menu-rss" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-rss"><a href="<mango:Blog rssurl />">RSS</a></li> --->
					</ul>
				</nav>
			</div>
		</div>
	</header>
</cfif>
