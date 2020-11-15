<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'saleAd.label', default: 'SaleAd')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-saleAd" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-saleAd" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Title</th>
                        <th scope="col">Description</th>
                        <th scope="col">Illustrations</th>
                        <th scope="col">Price</th>
                    </tr>
                </thead>
                <tbody>
                    <g:each in="${saleAdList}" var="saleAd">
                        <tr>
                            <td><a href="/tpmbds/saleAd/show/${saleAd.id}">${saleAd.title}</a></td>
                            <td>${saleAd.description}</td>
                            <td>
                                <g:each in="${saleAd.illustrations}" var="illustration">
                                    <a href="/tpmbds/illustration/show/${illustration.id}"><img src="https://picsum.photos/200/300"/></a>
                                </g:each>
                            </td>
                            <td>${saleAd.price}</td>
                        </tr>
                    </g:each>
                </tbody>
            </table>
            <div class="pagination">
                <g:paginate total="${saleAdCount ?: 0}" />
            </div>
        </div>
    </body>
</html>