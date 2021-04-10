<h2>{{$title}}</h2>

<div class="descriptive-paragraph" style="font-size: 1.2em;"><p>{{$desc}}</p></div>

<form action="regate/{{$did2}}" method="post">
<input type='hidden' name='form_security_token' value='{{$form_security_token}}'>
{{include file="field_input.tpl" field=[$acpin.0,$acpin.1,"","","",$atform]}}

<div class="pull-right submit-wrapper">
	<button type="submit" name="submit" class="btn btn-primary"{{$atform}}>{{$submit}}</button>
</div>

{{if $resend > ''}}
<div class="resend-email" >
	<button type="submit" name="resend" class="btn btn-warning"{{$atform}}>{{$resend}}</button>
</div>
{{/if}}

</form>
<div class="clear"></div>
<script>
	var week_days = ['Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday'];
	$('.register_date').each( function () {
		var date = new Date($(this).data('utc'));
		$(this).html(date.toLocaleString(undefined, {weekday: 'short', hour: 'numeric', minute: 'numeric'}));
	});
</script>
