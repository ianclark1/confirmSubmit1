<cfset str = structNew()>
<cfset str["fieldName"] = "continueForm">
<cfset str["fieldValue"] = "Continue">
<cfset str["confirmMessage"] = "Are you sure you wish to continue?">
<cfset str["confirmTitle"] = "Continue">

<cfform format="flash" action="process.cfm" width="400" height="150">
	
	<cfformgroup type="panel" label="Please enter your name and click continue">
	
		<cfinput type="text" name="usersName" label="Your Name: ">
	
		<cfmodule template="cfCreations/utils/confirmSubmit.cfm" attributecollection="#str#">
	
	</cfformgroup>
	
</cfform>