<script>
	$(function() {ldelim}
		$('#QuartzOASettings').pkpHandler('$.pkp.controllers.form.AjaxFormHandler');
	{rdelim});
</script>

<form
  class="pkp_form"
  id="QuartzOASettings"
  method="POST"
  action="{url router=$smarty.const.ROUTE_COMPONENT op="manage" category="blocks" plugin=$pluginName verb="settings" save=true}"
>
  <!-- Always add the csrf token to secure your form -->
	{csrf}

  {fbvFormArea}
		{fbvFormSection}
			{fbvElement
				type="text"
				id="paypalEmail"
				value=$paypalEmail
				label="plugins.blocks.quartzOA.manager.settings.paypalEmail"
			}
			{fbvElement
        type="text"
        id="ilpWallet"
        value=$ilpWallet
        label="plugins.blocks.quartzOA.manager.settings.ilpWallet"
      }
		{/fbvFormSection}
  {/fbvFormArea}
	{fbvFormButtons submitText="common.save"}
</form>
