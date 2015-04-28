<cfparam type="string" name="ATTRIBUTES.fieldName">
<cfparam type="string" name="ATTRIBUTES.fieldValue">
<cfparam type="string" name="ATTRIBUTES.confirmMessage">
<cfparam type="string" name="ATTRIBUTES.confirmTitle">

<cfoutput>

	<cfsavecontent variable="handler">
	
		import mx.controls.Alert; 
		
		var obj:MovieClip = this;
			   obj.id = "#ATTRIBUTES.fieldName#";
			   obj.text = "#ATTRIBUTES.fieldValue#";
		
		Alert.show('#ATTRIBUTES.confirmMessage#','#ATTRIBUTES.confirmTitle#',Alert.YES|Alert.NO,this,responder);
		
		function responder(event:Object)
		{
			if ( event.detail == 1 )
			{
				obj.submitForm(obj);
			}
		}
		
	</cfsavecontent>

</cfoutput>

<cfinput type="submit"
			   name="#ATTRIBUTES.fieldName#"
			   value="#ATTRIBUTES.fieldValue#"
			   onmousedown="#handler#">