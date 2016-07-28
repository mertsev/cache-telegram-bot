Class REST.JSON Extends %Base
{

// com

ClassMethod getMe() As %Status
{
	set status=$$$OK
	// Definition of dynamic json object
	set object = ##class(%Object).$new()
	try
	{
		Set httprequest=##class(%Net.HttpRequest).%New()
		set httprequest.Https = 1
		set httprequest.SSLConfiguration = "TelegramBot"
		Set httprequest.Server="api.telegram.org"
		do httprequest.Get("/bot263308881:AAFweMSLyEZrUe4hCQdNEJGT1dRK6VB6JuQ/getMe")
		//set status = httprequest.HttpResponse.OutputToDevice()
		//Set object.output = httprequest.HttpResponse.OutputToDevice()
		
		#dim responseLength as %Integer = 1000000
		set response = httprequest.HttpResponse.Data.Read(.responseLength)
		zw response

		if $$$ISOK(status)
		{
			do object.$set("success", 1, "boolean")
		}
	}
	catch ex
	{
		set status = ex.AsStatus()
	}
	quit $$$OK
}

ClassMethod getUpdates() As %Status
{
	set status=$$$OK
	// Definition of dynamic json object
	set object = ##class(%Object).$new()
	try
	{
		Set httprequest=##class(%Net.HttpRequest).%New()
		set httprequest.Https = 1
		set httprequest.SSLConfiguration = "TelegramBot"
		Set httprequest.Server="api.telegram.org"
		do httprequest.Get("getUpdates?offset=1")
		//set status = httprequest.HttpResponse.OutputToDevice()
		//Set object.output = httprequest.HttpResponse.OutputToDevice()
		
		#dim responseLength as %Integer = 1000000
		set response = httprequest.HttpResponse.Data.Read(.responseLength)
		zw response

		if $$$ISOK(status)
		{
			do object.$set("success", 1, "boolean")
		}
	}
	catch ex
	{
		set status = ex.AsStatus()
	}
	quit $$$OK
}

ClassMethod sendMessage() As %Status
{
	set status=$$$OK
	// Definition of dynamic json object
	set object = ##class(%Object).$new()
	try
	{
		Set httprequest=##class(%Net.HttpRequest).%New()
		set httprequest.Https = 1
		set httprequest.SSLConfiguration = "TelegramBot"
		Set httprequest.Server="api.telegram.org"
		do httprequest.Get("getUpdates?offset=1")
		//set status = httprequest.HttpResponse.OutputToDevice()
		//Set object.output = httprequest.HttpResponse.OutputToDevice()
		
		#dim responseLength as %Integer = 1000000
		set response = httprequest.HttpResponse.Data.Read(.responseLength)
		zw response

		if $$$ISOK(status)
		{
			do object.$set("success", 1, "boolean")
		}
	}
	catch ex
	{
		set status = ex.AsStatus()
	}
	quit $$$OK
}

}

