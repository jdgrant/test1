<cfquery datasource="#request.dsn#" name="q">
SELECT *
FROM Contacts
WHERE clientID='#request.clientID#'
</cfquery>

<cfset qDataJSON = serializeJSON(q)>

<cfoutput>#qDataJSON#</cfoutput>