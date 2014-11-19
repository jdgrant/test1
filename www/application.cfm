

<cfset REQUEST.dsn = "salesflowpro">
<cfset REQUEST.path = "E:\Websites\salesflowpro.com\">


<!---  Check if Logined--->
<cfif NOT IsDefined("COOKIE.u")>
	<cflocation url="/login/" addtoken="no">
</cfif> 


<!--- Call Components --->
<cfset REQUEST.cf_template =  createObject("component", "/cfc/templates/admin_template")>
<cfset REQUEST.cf_login =  createObject("component", "/cfc/admin_login")>
<cfset REQUEST.cf_clients =  createObject("component", "/cfc/admin_clients")>
<cfset REQUEST.cf_formManager =  createObject("component", "/cfc/admin_tableform_manager")>


<cfset variables.jqueryFileTree_webroot = "/uploads/#REQUEST.cf_login.getMemberDataSource()#/pages/" />