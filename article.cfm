<cfsilent>
<cfimport prefix="mango" taglib="../../tags/mango" />
<cfimport prefix="mangox" taglib="../../tags/mangoextras" />
<cfimport prefix="template" taglib="." />
</cfsilent>
<cfif thisTag.executionMode EQ "start">
	<h2>
		<a href="<mango:PostProperty link />" rel="bookmark" title="Permanent Link to <mango:PostProperty title />"><mango:PostProperty title /></a>
	</h2>
	<p class="info">
		<mango:PostProperty date dateformat="mmmm dd, yyyy" />
		| by 
		<span><mango:PostProperty author /></span>
		| 
		<mango:Categories>
			<mango:Category>
				<a href="<mango:CategoryProperty link />" title="View all posts in  <mango:CategoryProperty title />" rel="category tag"><mango:CategoryProperty title /></a>
				<mango:Category ifCurrentIsNotLast>&middot;</mango:Category>
			</mango:Category>
		</mango:Categories>
	</p>
	<div class="time">
		<p>
			<mango:PostProperty date dateformat="mmm" />
			<br />
			<span><mango:PostProperty date dateformat="dd" /></span>
		</p>
	</div>
</cfif>
