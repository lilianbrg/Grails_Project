<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>
<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="/tpmbds">
                    <asset:image src="logolecoincoin.png" alt="Lecoincoin Logo"/>
                </a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="/tpmbds">Home</a></li>
                <li><a href="/tpmbds/saleAd/index">Ads</a></li>
                <li><a href="/tpmbds/user/index">Users</a></li>
                <li><a href="/tpmbds/user/create">New User</a></li>
                <li><a href="/tpmbds/saleAd/create">New SaleAd</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/tpmbds/logout/index" ><span class="glyphicon glyphicon-log-in"></span> LogOut</a></li>
            </ul>
        </div>
    </nav>
    <g:layoutBody/>

    <div class="footer" role="contentinfo"></div>

    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>
    <asset:javascript src="application.js"/>

</body>
</html>
