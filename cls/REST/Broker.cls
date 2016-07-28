Class REST.Broker Extends %CSP.REST
{

XData UrlMap
{
<Routes>
	<Route Url="/getMe" Method="GET" Call="REST.JSON:getMe" />
	<Route Url="/getUpdates" Method="GET" Call="REST.JSON:getUpdates" />
</Routes>
}

ClassMethod Test() As %Status
{
    &html<Работает!>
    quit $$$OK
    //комент
}

}

