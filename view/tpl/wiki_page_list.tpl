<div id="wiki_page_list" class="widget" {{if $hide}} style="display: none;" {{/if}}>
	<h3>{{$header}}</h3>
	<ul class="nav nav-pills nav-stacked">
		{{foreach $pages as $page}}
		<li><a href="">{{$page}}</a></li>
		{{/foreach}}
	</ul>
</div>

